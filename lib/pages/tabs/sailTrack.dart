import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/my_map.dart';
import 'package:heart_voyage/pages/track/my_pet.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';

class sailTrack extends StatefulWidget {
  const sailTrack({Key? key}) : super(key: key);

  @override
  State<sailTrack> createState() => _sailTrackState();
}

class _sailTrackState extends State<sailTrack> {
  @override
  void initState() {
    // TODO: implement initState
    loadBasicData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          child: ElevatedButton(
            child: Text("查看已解锁的地图"),
            onPressed: () {
              Get.to(my_map());
            },
          ),
        ),
        SizedBox(
          child: Image(image: AssetImage('assets/images/Sichuan_map.png')
          ,alignment: Alignment.center,),
        ),
        SizedBox(
          height: 30,
        ),
        Text("当前省份：${basicData['CurrProvince']}"),
        Text("已解锁城市：${basicData['CurrCity']}"),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: common_widgets.returnPet(),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: basicData["score"] / 200,
            minHeight: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
        Center(
          child: Text("成长值 ${basicData['score']}"),
        ),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.to(my_pet());
            },
            child: Text("我的心宠")),
      ],
    ));
  }
}
