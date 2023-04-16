import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety/refined/AASR_check.dart';



class AASR_scale extends StatefulWidget {
  const AASR_scale({Key? key}) : super(key: key);

  @override
  State<AASR_scale> createState() => _AASR_scaleState();
}

class _AASR_scaleState extends State<AASR_scale> {
  int _positive = 0;
  int _negative = 0;

  CreateScale_AASR1(String question) {
    int _deltaPoints = 0;
    String? _groupValue = "没有";
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            question,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontFamily: 'FZ_Kaiti'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '总是',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "总是",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    _positive -= _deltaPoints;
                    _positive += 5;
                    _deltaPoints = 5;
                  });
                }),
            Text(
              '经常',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "经常",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    _positive += 4;
                  });
                }),
            Text(
              '有时',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "有时",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    _positive += 3;
                  });
                })
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '很少',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "很少",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    _positive += 2;
                  });
                }),
            Text(
              '几乎没有',
              style: TextStyle(fontFamily: 'FZ_Kaiti'),
            ),
            Radio(
                value: "几乎没有",
                groupValue: _groupValue,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                    _positive += 1;
                  });
                })
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white, title: Text('AASR量表')),
      body: SafeArea(
        child: ListView(
          children: [
            CreateScale_AASR1("shjgd"),
            Divider(),
            CreateScale_AASR1("test"),
            Divider(),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(AASR_check(), arguments: _positive);
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
