import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ITS_scale extends StatefulWidget {
  const ITS_scale({Key? key}) : super(key: key);

  @override
  State<ITS_scale> createState() => _ITS_scaleState();
}

class _ITS_scaleState extends State<ITS_scale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('ITS量表')),
      body: SafeArea(
        child: Text("敬请期待"),
      ),
    );;
  }
}
