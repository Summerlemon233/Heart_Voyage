import 'package:flutter/material.dart';

class Sichuan_2 extends StatefulWidget {
  const Sichuan_2({Key? key}) : super(key: key);

  @override
  State<Sichuan_2> createState() => _Sichuan_2State();
}

class _Sichuan_2State extends State<Sichuan_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("武侯祠",)),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("武侯祠",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image(image: AssetImage('assets/images/Chengdu_2.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("武侯祠的红墙\n文殊院的银杏\n龙泉山的枫叶\n骑着单车吹着二环路的风\n听它把蜀国的故事送进耳中\n（武侯祠始建于蜀汉章武元年（221年），原是纪念诸葛亮的专祠，亦称孔明庙、诸葛祠、丞相祠等，后合并为君臣合祀祠庙）\n）",
                style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
