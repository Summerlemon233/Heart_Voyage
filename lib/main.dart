import 'dart:ui';

import 'package:cloudbase_null_safety/cloudbase_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:heart_voyage/system/login.dart';
import 'package:heart_voyage/system/userdata_func.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:get_storage/get_storage.dart';

import 'pages/tabs.dart';
import 'system/userdata.dart';

void main() async {
  //Apifm.init("f299b26cbbc5915b6b14ffabb10241e1");
  // 初始化 CloudBase
  /*CloudBaseCore core_cloud = CloudBaseCore.init({
    // 填写你的云开发 env
    'env': 'heart-voyage-1gmjykfg0f02ddb9',
    'appAccess': {'key': '07a674466f148dc8e2443ec330589995', 'version': '0.3.0'}
  });*/
  WidgetsFlutterBinding.ensureInitialized();
  //debugPaintSizeEnabled = true;
  DartPluginRegistrant.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);
  init_data();
  await GetStorage.init();
  await initializeDateFormatting();
  /*CloudBaseCore core = CloudBaseCore.init({
    // 填写你的云开发 env
    'env': 'heart-voyage-1gmjykfg0f02ddb9',
    'appAccess': {'key': '07a674466f148dc8e2443ec330589995', 'version': '0.3.0'}
  });*/
  //FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String first_Page;
  //bool _isLogin = false;
  /*bool _isFirst = false;
  bool _islastPage = false;*/
  @override
  void initState() {
    /*CloudBaseCore core = CloudBaseCore.init({
      // 填写你的云开发 env
      'env': 'heart-voyage-1gmjykfg0f02ddb9',
      'appAccess': {'key': '07a674466f148dc8e2443ec330589995', 'version': '0.2.1'}
    });
    CloudBaseAuth auth = CloudBaseAuth(core);*/
    /*await auth.getAuthState().then((authState) {
      if (authState != null) {
        // 登录态有效
        _isLogin = true;
      } else {
        Get.to(login());
        // 没有登录态，或者登录态已经失效
      }
    });
    // TODO: implement initState*/
    /*loadBasicData();
    if(basicData['isLogin'] == false)
    {
      first_Page = '/login';
    }
    else first_Page = '/home';*/
    super.initState();

  }

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
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   fontFamily: 'Softbrush',
      //   useMaterial3: true,
      //   primarySwatch: Colors.blue,
      // ),
      routes: {
        '/login': (context) => login(),
        //'/':(context) => Tabs(),
      },
      //initialRoute: '/login',

      defaultTransition: Transition.fadeIn,
      //onGenerateRoute: onGenerateRoute,
      getPages: [],
      home: Tabs(),
    );
  }
}




