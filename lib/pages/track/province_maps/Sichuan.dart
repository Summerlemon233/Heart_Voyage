import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      appBar: AppBar(title: Text("四川"),),
      body: SafeArea(
        child: ListView(
          children: [
            mapListTile(Area: "宽窄巷子", AssetPath: "assets/images/Sichuan_1.png",onTapFunc: ()=>Get.to(Sichuan_1()),),
            //Divider(),
            mapListTile(Area: "武侯祠", AssetPath: "assets/images/Sichuan_2.png",onTapFunc: ()=>Get.to(Sichuan_2()),),
            //Divider(),
            mapListTile(Area: "青城山", AssetPath: "assets/images/Sichuan_3.png",onTapFunc: ()=>Get.to(Sichuan_3()),),
            //Divider(),
            mapListTile(Area: "都江堰", AssetPath: "assets/images/Sichuan_4.png",onTapFunc: ()=>Get.to(Sichuan_4()),),
            //Divider(),
            mapListTile(Area: "杜甫草堂", AssetPath: "assets/images/Sichuan_5.png",onTapFunc: ()=>Get.to(Sichuan_5()),),
            //Divider(),
            mapListTile(Area: "西岭雪山", AssetPath: "assets/images/Sichuan_6.png",onTapFunc: ()=>Get.to(Sichuan_6()),),
            //Divider(),
          ],
        ),
      ),
    );
  }
}
