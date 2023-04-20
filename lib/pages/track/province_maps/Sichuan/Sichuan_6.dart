import 'package:flutter/material.dart';

class Sichuan_6 extends StatefulWidget {
  const Sichuan_6({Key? key}) : super(key: key);

  @override
  State<Sichuan_6> createState() => _Sichuan_6State();
}

class _Sichuan_6State extends State<Sichuan_6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("西岭雪山",)),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("西岭雪山",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image(image: AssetImage('assets/images/Chengdu_6.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("窗含西岭千秋雪\n门泊东吴万里船\n一场大雪\n将童话世界带进人家\n携手在雪山之巅万物静寂\n（西岭雪山位于西部邛崃山脉的中段、地质构造复杂地段，海拔从1260—5364米不等。景区内最高峰大雪塘海拔5364米，终年积雪不化，为成都第一峰）\n",
                style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
