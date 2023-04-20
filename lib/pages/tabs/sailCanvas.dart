import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/canvas/about_star.dart';
import 'package:heart_voyage/pages/canvas/my_rank.dart';
import 'package:heart_voyage/pages/canvas/my_star.dart';
import 'package:heart_voyage/pages/canvas/upload_star.dart';
import 'package:heart_voyage/system/userdata_func.dart';
import 'dart:math';


import '../../system/change_avatar.dart';
import '../../system/common_image.dart';
import '../../system/showdata.dart';

class sailCanvas extends StatefulWidget {
  const sailCanvas({Key? key}) : super(key: key);

  @override
  State<sailCanvas> createState() => _sailCanvasState();
}

class _sailCanvasState extends State<sailCanvas> {

  int _rand = showData.length;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/universe.jpg')),
          ),
        ),
        Positioned(
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
          onTap: ()
          {
            int _value1 = Random().nextInt(_rand); // 取值范围是 [0,4] 或者 [0,5)
            show_other_star
                (userId: showData[_value1]['userId'],
                  timeSaved: showData[_value1]['timeSaved'],
                  photoAssetPath: showData[_value1]['avatarPath'],
                  avatarPath: showData[_value1]['photoAssetPath'],
                  description: showData[_value1]['description'],
                  timeUsed: showData[_value1]['timeUsed'],
                  intelligenceUsed: showData[_value1]['intelligenceUsed'],
                  scoreGot: showData[_value1]['scoreGot'],
                  val_radar: showData[_value1]['val_radar']);
          },),
          top: MediaQuery.of(context).size.height / 19,
          left: MediaQuery.of(context).size.width / 15,
        ),
        Positioned(
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
            onTap: ()
            {
              int _value2 = Random().nextInt(_rand); // 取值范围是 [0,4] 或者 [0,5)
              show_other_star
                (userId: showData[_value2]['userId'],
                  timeSaved: showData[_value2]['timeSaved'],
                  photoAssetPath: showData[_value2]['avatarPath'],
                  avatarPath: showData[_value2]['photoAssetPath'],
                  description: showData[_value2]['description'],
                  timeUsed: showData[_value2]['timeUsed'],
                  intelligenceUsed: showData[_value2]['intelligenceUsed'],
                  scoreGot: showData[_value2]['scoreGot'],
                  val_radar: showData[_value2]['val_radar']);
            },),
          top: MediaQuery.of(context).size.height / 23,
          left: MediaQuery.of(context).size.width / 5,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 15,
          left: MediaQuery.of(context).size.width / 3,
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
            onTap: ()
            {
              int _value3 = Random().nextInt(_rand);
              show_other_star
                (userId: showData[_value3]['userId'],
                  timeSaved: showData[_value3]['timeSaved'],
                  photoAssetPath: showData[_value3]['avatarPath'],
                  avatarPath: showData[_value3]['photoAssetPath'],
                  description: showData[_value3]['description'],
                  timeUsed: showData[_value3]['timeUsed'],
                  intelligenceUsed: showData[_value3]['intelligenceUsed'],
                  scoreGot: showData[_value3]['scoreGot'],
                  val_radar: showData[_value3]['val_radar']);
            },),
        ),
        Positioned(
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
            onTap: ()
            {
              int _value4 = Random().nextInt(_rand);
              show_other_star
                (userId: showData[_value4]['userId'],
                  timeSaved: showData[_value4]['timeSaved'],
                  photoAssetPath: showData[_value4]['avatarPath'],
                  avatarPath: showData[_value4]['photoAssetPath'],
                  description: showData[_value4]['description'],
                  timeUsed: showData[_value4]['timeUsed'],
                  intelligenceUsed: showData[_value4]['intelligenceUsed'],
                  scoreGot: showData[_value4]['scoreGot'],
                  val_radar: showData[_value4]['val_radar']);
            },),
          top: MediaQuery.of(context).size.height / 10,
          left: MediaQuery.of(context).size.width / 2,
        ),
        Positioned(
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
            onTap: ()
            {
              int _value5 = Random().nextInt(_rand);
              show_other_star
                (userId: showData[_value5]['userId'],
                  timeSaved: showData[_value5]['timeSaved'],
                  photoAssetPath: showData[_value5]['avatarPath'],
                  avatarPath: showData[_value5]['photoAssetPath'],
                  description: showData[_value5]['description'],
                  timeUsed: showData[_value5]['timeUsed'],
                  intelligenceUsed: showData[_value5]['intelligenceUsed'],
                  scoreGot: showData[_value5]['scoreGot'],
                  val_radar: showData[_value5]['val_radar']);
            },),
          top: MediaQuery.of(context).size.height / 6,
          left: MediaQuery.of(context).size.width / 1.75,
        ),
        Positioned(
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
            onTap: ()
            {
              int _value6 = Random().nextInt(_rand);
              show_other_star
                (userId: showData[_value6]['userId'],
                  timeSaved: showData[_value6]['timeSaved'],
                  photoAssetPath: showData[_value6]['avatarPath'],
                  avatarPath: showData[_value6]['photoAssetPath'],
                  description: showData[_value6]['description'],
                  timeUsed: showData[_value6]['timeUsed'],
                  intelligenceUsed: showData[_value6]['intelligenceUsed'],
                  scoreGot: showData[_value6]['scoreGot'],
                  val_radar: showData[_value6]['val_radar']);
            },),
          top: MediaQuery.of(context).size.height / 5.5,
          left: MediaQuery.of(context).size.width / 1.3,
        ),
        Positioned(
          child: GestureDetector(child: Image.asset('assets/images/star.png'),
            onTap: ()
            {
              int _value7 = Random().nextInt(_rand);
              show_other_star
                (userId: showData[_value7]['userId'],
                  timeSaved: showData[_value7]['timeSaved'],
                  photoAssetPath: showData[_value7]['avatarPath'],
                  avatarPath: showData[_value7]['photoAssetPath'],
                  description: showData[_value7]['description'],
                  timeUsed: showData[_value7]['timeUsed'],
                  intelligenceUsed: showData[_value7]['intelligenceUsed'],
                  scoreGot: showData[_value7]['scoreGot'],
                  val_radar: showData[_value7]['val_radar']);
            },),
          top: MediaQuery.of(context).size.height / 9.5,
          left: MediaQuery.of(context).size.width / 1.2,
        ),
        Positioned(
          child: Text(
            "欢迎来到扬帆多元社区！",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          top: MediaQuery.of(context).size.height / 3.8,
          left: MediaQuery.of(context).size.width / 5.8,
        ),
        Positioned(
          child: GestureDetector(
            child: Image.asset('assets/images/big_star.png'),
            onTap: () {
              selectedAsset = null;
              Get.to(upload_star());
            },
          ),
          top: MediaQuery.of(context).size.height / 3.0,
          left: MediaQuery.of(context).size.width / 2.7,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.0,
        ),
        Positioned(
          child: ElevatedButton(
            onPressed: () {
              Get.to(about_star());
            },
            child: Text("说明"),
          ),
          top: MediaQuery.of(context).size.height / 1.5,
          left: MediaQuery.of(context).size.width / 2.4,
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.35,
            left: MediaQuery.of(context).size.width / 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        readPhotoPath();
                        loadBasicData();
                        loadStarData();
                        Get.to(my_star());
                      });
                    },
                    child: Text("我的星星")),
                SizedBox(
                  width: 60,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(my_rank());
                    },
                    child: Text("我的排名")),
              ],
            ))
      ],
    ));
  }

  show_other_star({
    required String userId,
    required String timeSaved,
    required String photoAssetPath,
    required String avatarPath,
    required String description,
    required String timeUsed,
    required String intelligenceUsed,
    required int scoreGot,
    required List val_radar,
  }) {
    return Get.defaultDialog(
        title: "查看详情",
        confirm: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              "点击关闭",
            )),
        content: Container(
            //padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.02,0, MediaQuery.of(context).size.width * 0.02,0),
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.8,
          //height: MediaQuery.of(context).size.height * 0.7,
          child: ListView(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height * 0.05,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Avatar(image: AssetImage(avatarPath)),
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.yellowAccent, width: 1),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.025)),
                  ),
                  Text(
                    userId,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '保存时间：${timeSaved}',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '任务描述：${description}',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '任务类型：${intelligenceUsed}',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '所用时间：${timeUsed}',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '获得分数：${scoreGot}',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(photoAssetPath),
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            ),

            Container(
                alignment: Alignment.center,
                child: Text(
                  'Ta的雷达图',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                )),

             SizedBox(height: 10,),
                Container(

                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.5,
                  //height: MediaQuery.of(context).size.height * 0.3,
                  child: RadarChart(
                    RadarChartData(
                        borderData: FlBorderData(show: false),
                        radarTouchData: RadarTouchData(enabled: false),
                        tickCount: 9,
                        titlePositionPercentageOffset: 0.15,
                        getTitle: (value, angle) {
                          switch (value.toInt()) {
                            case 0:
                              return RadarChartTitle(text: "语言");
                            case 1:
                              return RadarChartTitle(text: "逻辑数学");
                            case 2:
                              return RadarChartTitle(text: "音乐");
                            case 3:
                              return RadarChartTitle(text: "肢体运作");
                            case 4:
                              return RadarChartTitle(text: "人际");
                            case 5:
                              return RadarChartTitle(text: "空间");
                            case 6:
                              return RadarChartTitle(text: "内省");
                            case 7:
                              return RadarChartTitle(text: "自然探索");
                            case 8:
                              return RadarChartTitle(text: "存在");
                            default:
                              return RadarChartTitle(text: "");
                          }
                        },
                        dataSets: [
                          RadarDataSet(
                              fillColor: Colors.cyanAccent.withAlpha(50),
                              borderColor: Colors.blueAccent,
                              borderWidth: 1,
                              dataEntries: [
                                RadarEntry(value: val_radar[0].toDouble()),
                                RadarEntry(value: val_radar[1].toDouble()),
                                RadarEntry(value: val_radar[2].toDouble()),
                                RadarEntry(value: val_radar[3].toDouble()),
                                RadarEntry(value: val_radar[4].toDouble()),
                                RadarEntry(value: val_radar[5].toDouble()),
                                RadarEntry(value: val_radar[6].toDouble()),
                                RadarEntry(value: val_radar[7].toDouble()),
                                RadarEntry(value: val_radar[8].toDouble()),
                              ]),
                        ]),
                  ),
                ),
          ]),
        ));
  }


}
