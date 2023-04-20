import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/province_maps/Sichuan/Chengdu.dart';
import 'package:heart_voyage/pages/track/province_maps/Sichuan/Sichuan_1.dart';
import '../../../system/common_widgets.dart';
import 'Sichuan/Sichuan_2.dart';
import 'Sichuan/Sichuan_3.dart';
import 'Sichuan/Sichuan_4.dart';
import 'Sichuan/Sichuan_5.dart';
import 'Sichuan/Sichuan_6.dart';
class Sichuan extends StatefulWidget {
  const Sichuan({Key? key}) : super(key: key);

  @override
  State<Sichuan> createState() => _SichuanState();
}

class _SichuanState extends State<Sichuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,title: Text("四川"),),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            mapListTile(Area: "成都", AssetPath: "assets/images/Chengdu.jpg",onTapFunc: ()=>Get.to(Chengdu()),),

            //Divider(),
          ],
        ),
      ),
    );
  }
}
