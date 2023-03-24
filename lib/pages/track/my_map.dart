import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/province_maps/Beijing.dart';
import 'package:heart_voyage/pages/track/province_maps/Chongqing.dart';
import 'package:heart_voyage/pages/track/province_maps/Guangdong.dart';
import 'package:heart_voyage/pages/track/province_maps/Hong_Kong.dart';
import 'package:heart_voyage/pages/track/province_maps/Hunan.dart';
import 'package:heart_voyage/pages/track/province_maps/Shanghai.dart';
import 'package:heart_voyage/pages/track/province_maps/Sichuan.dart';
import 'package:heart_voyage/system/common_widgets.dart';

class my_map extends StatefulWidget {
  const my_map({Key? key}) : super(key: key);

  @override
  State<my_map> createState() => _my_mapState();
}

class _my_mapState extends State<my_map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的地图",)),
      body: SafeArea
        (
        child: ListView
          (
          children: [
            mapListTile(Area: "四川", AssetPath: "assets/images/Sichuan.png",onTapFunc: ()=>Get.to(Sichuan())),
            //Divider(),
            mapListTile(Area: "湖南", AssetPath: "assets/images/Hunan.png",onTapFunc: ()=>Get.to(Hunan())),
            //Divider(),
            mapListTile(Area: "上海", AssetPath: "assets/images/Shanghai.png",onTapFunc: ()=>Get.to(Shanghai())),
            //Divider(),
            mapListTile(Area: "重庆", AssetPath: "assets/images/Chongqing.png",onTapFunc: ()=>Get.to(Chongqing())),
            //Divider(),
            mapListTile(Area: "北京", AssetPath: "assets/images/Beijing.png",onTapFunc: ()=>Get.to(Beijing())),
            //Divider(),
            mapListTile(Area: "广东", AssetPath: "assets/images/Guangdong.png",onTapFunc: ()=>Get.to(Guangdong())),
            //Divider(),
            mapListTile(Area: "香港", AssetPath: "assets/images/Hong_Kong.png",onTapFunc: () => Get.to(Hong_Kong()),),
            //Divider(),
          ],
        ),
      ),
    );
  }
}
