import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:heart_voyage/pages/heart/anxiety/overall_judge.dart';
import 'package:heart_voyage/pages/heart/anxiety/refined_judge.dart';

class anxiety_test extends StatefulWidget {
  const anxiety_test({Key? key}) : super(key: key);

  @override
  State<anxiety_test> createState() => _anxiety_testState();
}

class _anxiety_testState extends State<anxiety_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Text('焦虑自测'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.08,
                0,
                MediaQuery.of(context).size.width * 0.08,
                0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  final _last_time_anxiety_box = GetStorage();
                  var _now = DateTime.now();
                  int _nowTime = _now.millisecondsSinceEpoch;
                  var _last_anxiety =
                      _last_time_anxiety_box.read('last_time_anxiety');
                  if (_last_anxiety == 1682006152609 || _last_anxiety == null) {
                    Get.to(overall_judge());
                  }
                  else
                  {
                    if(_nowTime - _last_anxiety <= 7 * 24 * 60 * 60 * 1000)
                    {
                      print(_last_anxiety);
                      print(_nowTime);
                      print(_nowTime - _last_anxiety <= 7 * 24 * 60 * 60 * 1000);
                      Get.snackbar('提示', '距离您上一次焦虑测试时间还不到一周。请稍后再进行测试。',snackPosition: SnackPosition.BOTTOM);
                    }
                    else Get.to(overall_judge());
                  }
                });
              },
              child: Center(
                child: Text(
                  '焦虑水平总体评价',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
                foregroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.1)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                        color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.08,
                0,
                MediaQuery.of(context).size.width * 0.08,
                0),
            child: ElevatedButton(
              onPressed: () {
                Get.to(refined_judge());
              },
              child: Center(
                child: Text(
                  '焦虑水平细化评价',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
                foregroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.1)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                        color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          /*Container(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.08,
                0,
                MediaQuery.of(context).size.width * 0.08,
                0),
            child: ElevatedButton(
              onPressed: () {
                Get.to(anxiety_test());
              },
              child: Center(
                widthFactor: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  '焦虑的影响测试',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
                foregroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.1)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                        color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                  ),
                ),
              ),
            ),
          )*/
        ],
      )),
    );
  }
}
