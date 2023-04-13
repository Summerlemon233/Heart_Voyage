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
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("武侯祠",)),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
