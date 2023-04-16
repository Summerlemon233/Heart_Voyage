import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety/anxiety_instruction.dart';
import 'package:heart_voyage/pages/heart/anxiety/check_overall_score.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';

class CreateAnxietyOverallScale extends StatefulWidget {
  final String question;

  CreateAnxietyOverallScale({Key? key, required this.question}) : super(key: key);

  @override
  State<CreateAnxietyOverallScale> createState() => _CreateAnxietyOverallScaleState();
}

class _CreateAnxietyOverallScaleState extends State<CreateAnxietyOverallScale> {
  String? _groupValue = "没有";
  int _deltaValue = 0;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.question,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontFamily: 'FZ_Kaiti'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '没有',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "没有",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_overall_anxiety -= _deltaValue;
                    _deltaValue = 0;
                    score_overall_anxiety += _deltaValue;
                  });
                }),
            Text(
              '偶尔',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "偶尔",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_overall_anxiety -= _deltaValue;
                    _deltaValue = 1;
                    score_overall_anxiety += _deltaValue;
                  });
                })
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '有一半以上时间',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "有一半以上时间",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_overall_anxiety -= _deltaValue;
                    _deltaValue = 2;
                    score_overall_anxiety += _deltaValue;
                  });
                }),
            Text(
              '几乎天天',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "几乎天天",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_overall_anxiety -= _deltaValue;
                    _deltaValue = 3;
                    score_overall_anxiety += _deltaValue;
                  });
                })
          ],
        )
      ],
    );;
  }
}

int score_overall_anxiety = 0;

class overall_judge extends StatefulWidget {
  const overall_judge({Key? key}) : super(key: key);

  @override
  State<overall_judge> createState() => _overall_judgeState();
}

class _overall_judgeState extends State<overall_judge> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Text('焦虑自测')),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              /*decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(90, 66, 53, 1))),*/
              child: Column(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => anxiety_instruction());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        child: Text(
                          '温馨提示',
                          style: TextStyle(fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 167, 63, 1),
                          border: Border.all(
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                    /*child: */
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '    在过去的两周里，你生活中有多少天出现以下的症状？请选择你认为最符合的选项。',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Divider(),
            CreateAnxietyOverallScale(question: '1.感到不安、担心及烦躁'),
            Divider(),
            CreateAnxietyOverallScale(question: '2.不能停止担心或控制不了担心'),
            Divider(),
            CreateAnxietyOverallScale(question: '3.对各种各样的事情过度担心'),
            Divider(),
            CreateAnxietyOverallScale(question: '4.很紧张，很难放松下来'),
            Divider(),
            CreateAnxietyOverallScale(question: '5.非常焦躁，以至无法静坐'),
            Divider(),
            CreateAnxietyOverallScale(question: '6.变得容易烦恼或易被激怒'),
            Divider(),
            CreateAnxietyOverallScale(question: '7.感到好像有什么可怕的事会发生'),
            Divider(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  basicData["moodscore"] = score_overall_anxiety;
                  saveBasicData();
                  Get.to(check_overall_score(), arguments: score_overall_anxiety);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(224, 167, 63, 1)),
                  foregroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                ),
                child: Text(
                  "点击查看分数",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}


