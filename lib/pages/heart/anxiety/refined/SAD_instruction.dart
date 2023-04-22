import 'package:flutter/material.dart';

class SAD_instruction extends StatefulWidget {
  const SAD_instruction({Key? key}) : super(key: key);

  @override
  State<SAD_instruction> createState() => _SAD_instructionState();
}

class _SAD_instructionState extends State<SAD_instruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Text('详细信息'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: ListView(children: [
          Text(
            "       社交回避及苦恼量表(SAD)\n       社交回避指回避社会交往的倾向，是一种行为表现;社交苦恼是当事人身处其境时的苦恼感受,是一种情感反应。\n       社交回避及苦恼量表(socialavoidance and distress scale,SAD)由 Watson与Friend 等在 1969 年编制，中文修订版本由马宏完成，量表内容包括社交回避及苦恼 2个部分,作者在建立量表时，非常注重其概念，指出社交回避的反面不是社会参与而是不回避,且将主观上的苦恼和行为上的回避均包括在内。",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontFamily: "FZ_Kaiti"),
          ),
        ]),
        decoration: BoxDecoration(
            color: Color.fromRGBO(224, 167, 63, 1),
            border: Border.all(
              color: Colors.brown,
              width: 3.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
