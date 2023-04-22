import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/my_map.dart';
import 'package:heart_voyage/pages/track/my_pet.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';

import '../../system/common_widgets.dart';

class sailTrack extends StatefulWidget {
  const sailTrack({Key? key}) : super(key: key);

  @override
  State<sailTrack> createState() => _sailTrackState();
}

class _sailTrackState extends State<sailTrack> with SingleTickerProviderStateMixin{
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    // TODO: implement initState
    loadBasicData();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 1000),
    );
    _slideAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -0.5))
        .animate(
        CurvedAnimation(parent: _controller, curve: Curves.linear));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
          child: ElevatedButton(
            child: Text("查看已解锁的地图"),
            onPressed: () {
              Get.to(my_map());
            },
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Image(
            image: AssetImage('assets/images/Sichuan_map.png'),
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("当前省份：${basicData['CurrProvince']}"),
        ),
        Container(
          alignment: Alignment.center,
          child: Text("已解锁城市：${basicData['CurrCity']}"),
        ),

        Container(
          height: 100,
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: SlideTransition(
            position: _slideAnimation,
            child: GestureDetector(
              onTap: ()
              {
                setState(() {
                  _controller.forward();
                  _controller.reverse(from: _controller.upperBound);
                });
              },
              child: returnPet(),
            ),
          )

        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
              0, MediaQuery.of(context).size.width * 0.1, 0),
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: basicData["score"] / 400,
            minHeight: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.3,
              0, MediaQuery.of(context).size.width * 0.3, 0),
          child:
          //Obx(() =>
              Text("成长值 ${basicData['score']}"),
          //),
          alignment: Alignment.center,
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.3,
              0, MediaQuery.of(context).size.width * 0.3, 0),
          child: ElevatedButton(
              onPressed: () {
                Get.to(my_pet());
              },
              child: Text("我的心宠")),
        )
      ],
    ));
  }
}
