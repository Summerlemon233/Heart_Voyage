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
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("宽窄巷子",)),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
