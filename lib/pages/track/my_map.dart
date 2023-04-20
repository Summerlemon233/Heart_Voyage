import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/province_maps/Beijing.dart';
import 'package:heart_voyage/pages/track/province_maps/Chongqing.dart';
import 'package:heart_voyage/pages/track/province_maps/Guangdong.dart';
import 'package:heart_voyage/pages/track/province_maps/Hong_Kong.dart';
import 'package:heart_voyage/pages/track/province_maps/Shanghai.dart';
import 'package:heart_voyage/pages/track/province_maps/Sichuan.dart';
import 'package:heart_voyage/system/common_widgets.dart';

import '../../system/userdata.dart';

class my_map extends StatefulWidget {
  const my_map({Key? key}) : super(key: key);

  @override
  State<my_map> createState() => _my_mapState();
}

class _my_mapState extends State<my_map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Text(
            "我的地图",
          )),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            mapListTile(
                Area: "四川",
                AssetPath: "assets/images/Sichuan.png",
                onTapFunc: () {
                  if (basicData['score'] >= 50) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁四川需要50成长值。")],
                        ));
                }),
            //Divider(),
            SizedBox(
              height: 10,
            ),
            mapListTile(
                Area: "湖南",
                AssetPath: "assets/images/Hunan.png",
                onTapFunc: () {
                  if (basicData['score'] >= 600) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁湖南需要600成长值。")],
                        ));
                }),
            //Divider(),
            SizedBox(
              height: 10,
            ),
            mapListTile(
                Area: "上海",
                AssetPath: "assets/images/Shanghai.png",
                onTapFunc: () {
                  if (basicData['score'] >= 1200) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁上海需要1200成长值。")],
                        ));
                }),
            //Divider(),
            SizedBox(
              height: 10,
            ),
            mapListTile(
                Area: "重庆",
                AssetPath: "assets/images/Chongqing.png",
                onTapFunc: () {
                  if (basicData['score'] >= 2000) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁重庆需要2000成长值。")],
                        ));
                }),
            //Divider(),
            SizedBox(
              height: 10,
            ),
            mapListTile(
                Area: "北京",
                AssetPath: "assets/images/Beijing.png",
                onTapFunc: () {
                  if (basicData['score'] >= 2800) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁北京需要2800成长值。")],
                        ));
                }),
            //Divider(),
            SizedBox(
              height: 10,
            ),
            mapListTile(
                Area: "广东",
                AssetPath: "assets/images/Guangdong.png",
                onTapFunc: () {
                  if (basicData['score'] >= 3900) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁广东需要3900成长值。")],
                        ));
                }),
            //Divider(),
            SizedBox(
              height: 10,
            ),
            mapListTile(
              Area: "香港",
              AssetPath: "assets/images/Hong_Kong.png",
                onTapFunc: () {
                  if (basicData['score'] >= 5000) {
                    Get.to(Sichuan());
                  } else
                    Get.defaultDialog(
                        title: "提示",
                        content: Column(
                          children: [Text("解锁香港需要5000成长值。")],
                        ));
                })
            //Divider(),
          ],
        ),
      ),
    );
  }
}
