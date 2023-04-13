import 'dart:ui';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/themes.dart';
import 'package:heart_voyage/system/userdata_func.dart';
import 'pages/tabs.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/rendering.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //debugPaintSizeEnabled = true;
  DartPluginRegistrant.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);
  init_data();
  await GetStorage.init();
  await initializeDateFormatting();
  //FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: '心旅',
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Softbrush',
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Softbrush',
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        defaultTransition: Transition.fadeIn,
        //onGenerateRoute: onGenerateRoute,
      getPages: [],
        home: Tabs(),
    );
  }
}



