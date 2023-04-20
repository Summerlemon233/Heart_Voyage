import 'package:flutter/material.dart';

class Sichuan_4 extends StatefulWidget {
  const Sichuan_4({Key? key}) : super(key: key);

  @override
  State<Sichuan_4> createState() => _Sichuan_4State();
}

class _Sichuan_4State extends State<Sichuan_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("都江堰",)),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("都江堰",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image(image: AssetImage('assets/images/Chengdu_4.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("看似自处低下\n却能蒸腾九霄\n为云为雨，为虹为霞\n都江堰\n有了一个李冰 神话走向实际\n幽深的精神天国一下子贴近了大地\n贴近了苍生\n——余秋雨\n（都江堰，位于四川省成都市都江堰市城西，坐落在成都平原西部的岷江上， 是由渠首枢纽（鱼嘴、飞沙堰、宝瓶口）、灌区各级引水渠道，各类工程建筑物和大中小型水库和塘堰等所构成的一个庞大的工程系统）\n",
                style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
