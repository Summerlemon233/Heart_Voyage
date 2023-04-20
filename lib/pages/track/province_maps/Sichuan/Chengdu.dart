import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/province_maps/Sichuan/Sichuan_1.dart';

import '../../../../system/common_widgets.dart';
import './Sichuan_2.dart';
import './Sichuan_3.dart';
import './Sichuan_4.dart';
import './Sichuan_5.dart';
import './Sichuan_6.dart';
class Chengdu extends StatefulWidget {
  const Chengdu({Key? key}) : super(key: key);

  @override
  State<Chengdu> createState() => _ChengduState();
}

class _ChengduState extends State<Chengdu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,title: Text("成都"),),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            mapListTile(Area: "宽窄巷子", AssetPath: "assets/images/Sichuan_1.png",onTapFunc: ()=>Get.to(Sichuan_1()),),
            SizedBox(height: 10,),
            //Divider(),
            mapListTile(Area: "武侯祠", AssetPath: "assets/images/Sichuan_3.png",onTapFunc: ()=>Get.to(Sichuan_2()),),
            SizedBox(height: 10,),
            //Divider(),
            mapListTile(Area: "青城山", AssetPath: "assets/images/Sichuan_4.png",onTapFunc: ()=>Get.to(Sichuan_3()),),
            SizedBox(height: 10,),
            //Divider(),
            mapListTile(Area: "都江堰", AssetPath: "assets/images/Sichuan_5.png",onTapFunc: ()=>Get.to(Sichuan_4()),),
            SizedBox(height: 10,),
            //Divider(),
            mapListTile(Area: "杜甫草堂", AssetPath: "assets/images/Sichuan_2.png",onTapFunc: ()=>Get.to(Sichuan_5()),),
            SizedBox(height: 10,),
            //Divider(),
            mapListTile(Area: "西岭雪山", AssetPath: "assets/images/Sichuan_6.png",onTapFunc: ()=>Get.to(Sichuan_6()),),
            SizedBox(height: 10,),
            //Divider(),
          ],
        ),
      ),
    );
  }
}
