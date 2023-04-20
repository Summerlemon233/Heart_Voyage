import 'package:flutter/material.dart';

class Sichuan_3 extends StatefulWidget {
  const Sichuan_3({Key? key}) : super(key: key);

  @override
  State<Sichuan_3> createState() => _Sichuan_3State();
}

class _Sichuan_3State extends State<Sichuan_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("青城山",)),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("青城山",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image(image: AssetImage('assets/images/Chengdu_3.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("六月仲夏 幽幽苍翠草木生\n青城已倾城\n“拜水都江堰，问道青城山”\n余秋雨的这句话让我心心念念好几年\n只一盏淡茶的功夫\n岷江之水就在我脑海里泛起千层波浪\n——房琪\n（青城山全山林木青翠，四季常青，诸峰环峙，状若城廓，故名青城山。丹梯千级，曲径通幽，以幽洁取胜。景区内外，天师洞和圆明宫幽静是青城山的一大特色））\n",
                style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
