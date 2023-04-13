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
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text("都江堰",)),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
