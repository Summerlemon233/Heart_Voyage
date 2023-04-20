import 'package:flutter/material.dart';

class Sichuan_5 extends StatefulWidget {
  const Sichuan_5({Key? key}) : super(key: key);

  @override
  State<Sichuan_5> createState() => _Sichuan_5State();
}

class _Sichuan_5State extends State<Sichuan_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("杜甫草堂",)),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("杜甫草堂",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image(image: AssetImage('assets/images/Chengdu_5.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("舍南舍北皆春色\n但见群鸥日日来\n花径不曾缘客扫\n蓬门今始为君开\n——杜甫\n（杜甫草堂，是中国唐代大诗人杜甫流寓成都时的故居，位于四川省成都市青羊区青华路38号。杜甫先后在此居住近四年，创作诗歌240余首。唐末诗人韦庄寻得草堂遗址，重结茅屋，使之得以保存，宋元明清历代都有修葺扩建）\n",
                style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
