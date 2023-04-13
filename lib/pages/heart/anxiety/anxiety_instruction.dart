import 'package:flutter/material.dart';

class anxiety_instruction extends StatefulWidget {
  const anxiety_instruction({Key? key}) : super(key: key);

  @override
  State<anxiety_instruction> createState() => _anxiety_instructionState();
}

class _anxiety_instructionState extends State<anxiety_instruction> {
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
        child: Center(
          child: Text(
            "广泛性焦虑量表GAD-7是广泛用于临床的量表，用于评估焦虑情绪，定期（1次/1-2周）自评可以观察焦虑情绪变化趋势和治疗效果。\n\n"

            "没有 0 有几天 1 一半以上时间 2 几乎天天 3\n\n"
          "总分为1到7题所选答案对应数字的总和。\n"

          "为了您测试结果的准确性和科学性，我们每周仅提供一次填写本量表的机会，请您谨慎填写。\n\n"
            ,style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "FZ_Kaiti"),
        ),),
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
