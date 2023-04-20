import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety/anxiety_instruction.dart';
import 'package:heart_voyage/pages/heart/anxiety/refined/ASMC_check.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';

class CreateASMC_Scale extends StatefulWidget {
  final String question;

  CreateASMC_Scale({Key? key, required this.question}) : super(key: key);

  @override
  State<CreateASMC_Scale> createState() => _CreateASMC_ScaleState();
}

class _CreateASMC_ScaleState extends State<CreateASMC_Scale> {
  String? _groupValue = "完全不符合";
  int _deltaValue = 1;

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
              '完全不符合',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "完全不符合",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_ASMC -= _deltaValue;
                    _deltaValue = 1;
                    score_ASMC += _deltaValue;
                  });
                }),
            Text(
              '有点不符合',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "有点不符合",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_ASMC -= _deltaValue;
                    _deltaValue = 2;
                    score_ASMC += _deltaValue;
                  });
                })
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '中立',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "中立",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_ASMC -= _deltaValue;
                    _deltaValue = 3;
                    score_ASMC += _deltaValue;
                  });
                }),
            Text(
              '比较符合',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "比较符合",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_ASMC -= _deltaValue;
                    _deltaValue = 4;
                    score_ASMC += _deltaValue;
                  });
                }),
            Text(
              '非常符合',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "非常符合",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    score_ASMC -= _deltaValue;
                    _deltaValue = 5 ;
                    score_ASMC += _deltaValue;
                  });
                })
          ],
        )
      ],
    );;
  }
}

int score_ASMC = 0;

class ASMC_scale extends StatefulWidget {
  const ASMC_scale({Key? key}) : super(key: key);

  @override
  State<ASMC_scale> createState() => _ASMC_scaleState();
}

class _ASMC_scaleState extends State<ASMC_scale> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Text('社交媒体容貌焦虑量表')),
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
                    '    请根据自己的情况对于每个问题，从“完全不符合”到“非常符合”五项中选择一项',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Divider(),
            CreateASMC_Scale(question: '1.我因为自己的外貌而感到焦虑和不安'),
            Divider(),
            CreateASMC_Scale(question: '2.我认为他人对我的外貌评价非常重要'),
            Divider(),
            CreateASMC_Scale(question: '3.我常常通过社交媒体来寻求他人的外貌评价'),
            Divider(),
            CreateASMC_Scale(question: '4.我对自己的外貌很不满意'),
            Divider(),
            CreateASMC_Scale(question: '5.我认为自己在照片或视频中显得不够好看'),
            Divider(),
            CreateASMC_Scale(question: '6.当我看到他人在社交媒体上晒出自己的美照时，我会感到焦虑和不安'),
            Divider(),
            CreateASMC_Scale(question: '7.我认为社交媒体上的美女帅哥们使我感到很有压力'),
            Divider(),
            CreateASMC_Scale(question: '8.我会为了在社交媒体上呈现完美的形象而花费很多时间和精力'),
            Divider(),
            CreateASMC_Scale(question: '9.我认为我的外貌是我在社交媒体上展示自己的最重要的资产之一'),
            Divider(),
            CreateASMC_Scale(question: '10.我常常会对自己的照片进行修改和美颜处理'),
            Divider(),
            CreateASMC_Scale(question: '11.我会在社交媒体上比较自己和他人的外貌'),
            Divider(),
            CreateASMC_Scale(question: '12.当我发现自己在社交媒体上的照片或视频没有得到足够的点赞或评论时，我会感到失落和不安'),
            Divider(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  /*basicData["moodscore"] = score_ITS;
                  saveBasicData();*/
                  //上面两注释掉，下面一行get内改成check。。。
                  Get.to(ASMC_check(), arguments: score_ASMC);
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



