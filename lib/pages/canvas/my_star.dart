import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/common_image.dart';
import 'package:heart_voyage/system/userdata_func.dart';

import '../../system/userdata.dart';

class my_star extends StatefulWidget {
  const my_star({Key? key}) : super(key: key);

  @override
  State<my_star> createState() => _my_starState();
}

class _my_starState extends State<my_star> {
  @override
  void initState() {
    loadBasicData();
    readPhotoPath();
    //将之前保存到本地的图片加载到临时缓冲区变量List内
    /*for (int i = 0; i <= basicData['star_case']; i++) {
      loadPhoto(i);
    }*/
    super.initState();
  }

  check_prev_star({
    required String userId,
    required Image userAvatar,
    required int index,
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
            height: MediaQuery.of(context).size.height * 0.6,
            //height: MediaQuery.of(context).size.height * 0.7,
            child: SizedBox(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.05,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ClipOval(
                          child: userAvatar,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.yellowAccent, width: 1),
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
                    '保存时间：${basicData["date_star"][index]}',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '任务描述：${basicData["title_star"][index]}',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '任务类型：${basicData["intelligence_star"][index]}',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '所用时间：${basicData['used_time_star'][index]}',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '获得分数：${basicData["score_star"][index]}',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    )),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      '我的雷达图',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    )),

                //SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
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
                              return RadarChartTitle(text: "空间");
                            case 5:
                              return RadarChartTitle(text: "语言");
                            case 6:
                              return RadarChartTitle(text: "人际");
                            case 7:
                              return RadarChartTitle(text: "内省");
                            case 8:
                              return RadarChartTitle(text: "自然探索");
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
                                RadarEntry(value: basicData['1_pt'].toDouble()),
                                RadarEntry(value: basicData['2_pt'].toDouble()),
                                RadarEntry(value: basicData['3_pt'].toDouble()),
                                RadarEntry(value: basicData['4_pt'].toDouble()),
                                RadarEntry(value: basicData['5_pt'].toDouble()),
                                RadarEntry(value: basicData['6_pt'].toDouble()),
                                RadarEntry(value: basicData['7_pt'].toDouble()),
                                RadarEntry(value: basicData['8_pt'].toDouble()),
                                RadarEntry(value: basicData['9_pt'].toDouble()),
                              ]),
                        ]),
                  ),
                ),
              ]),
            )));
  }

/*  photoPathPrefix = */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('我的星星'),
            IconButton(
                onPressed: () {
                  setState(() {
                    readPhotoPath();
                    loadBasicData();
                    readPhotoPath_mood();
                    readPhotoPath_avatar();
                  });
                },
                icon: const Icon(Icons.refresh)),
          ],
        ),
      ),
      body: Column(
        children: [
          //Text("1$photoPath"),
          //Text("2$title_star"),
          //Text("3${GetStorage().read('photoPath')}"),
          //Text("4${basicData}"),
          //Text("5${PhotoPath_avatar}"),
          /*Container(
            height: 10,
            decoration: BoxDecoration(
                color: GetStorage().read('photoPath') == null
                    ? Colors.red
                    : Colors.green),
          ),*/
          /*ElevatedButton(
              onPressed: () {
                setState(() {
                  readPhotoPath();
                  loadStarData();
                  readPhotoPath_mood();
                });
              },
              child: Text("photoPath")),*/
          basicData["star_case"] == 0 || basicData["star_case"] ==null || photoPath.length == 0
              ? Center(
                  child: Text("点击刷新键以查看记录"),
                )
              : Expanded(
                  child: ListView.separated(
                    itemCount: basicData["star_case"],
                    itemBuilder: (context, index) => ListTile(
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: imageFromFile(photoPath[index]),
                      ),
                      title: Text('任务描述:${basicData["title_star"][index]}'),
                      subtitle: Text(
                          '任务类型:${basicData["intelligence_star"][index]}\n获得分数:${basicData["score_star"][index]}'),
                      onTap: () {
// 点击事件
                        check_prev_star(
                            userId: basicData['username'],
                            userAvatar: Image(
                                image: AssetImage('assets/images/pet0.png')),
                            index: index);
                        print('点击了第$index个ListTile');
                      },
                    ),
                    separatorBuilder: (context, index) => Divider(),
                  ),
                ),
        ],
      ),
    );
  }
}
