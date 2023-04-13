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
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("青城山",)),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
