import 'package:flutter/material.dart';

class TAS_instruction extends StatefulWidget {
  const TAS_instruction({Key? key}) : super(key: key);

  @override
  State<TAS_instruction> createState() => _TAS_instructionState();
}

class _TAS_instructionState extends State<TAS_instruction> {
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
            "       Sarason 考试焦虑量（Test Anxiety Scale）是Sarason在1978年编制完成的，简称TAS。\n       中文版的TAS量表由王才康首先引入国内，并对中文版的信度和效度作了检测。\n       结果表明TAS量表一周后的重测信度为化0.62，科隆巴赫系数为0.64，分半信度为0.60，效度良好。\n       该量表共37道题目，每个题目要求作是或否的回答，测量学生对测验考试持有的态度和在考试前后的主观体验等。",
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
