import 'package:flutter/material.dart';

class Sichuan_1 extends StatefulWidget {
  const Sichuan_1({Key? key}) : super(key: key);

  @override
  State<Sichuan_1> createState() => _Sichuan_1State();
}

class _Sichuan_1State extends State<Sichuan_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("宽窄巷子",)),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("宽窄巷子",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image(image: AssetImage('assets/images/Chengdu_1.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("我一直有一个住在宽窄巷子里的小愿望\n找个风和日丽的周末\n穿一身素衣，拿一把团扇\n住进窄巷子里的民宿\n午后去老茶馆喝口盖碗茶 坐在阳台的蒲团上晒着太阳吃的枇杷\n这才是 成都原有的样子\n（宽窄巷子位于四川省成都市青羊区长顺街附近，由宽巷子、窄巷子、井巷子平行排列组成，全为青黛砖瓦的仿古四合院落，这里也是成都遗留下来的较成规模的清朝古街道）",
              style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
