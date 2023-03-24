import 'package:flutter/material.dart';
import 'package:get/get.dart';

class graduate_anxiety_scale extends StatefulWidget {
  const graduate_anxiety_scale({Key? key}) : super(key: key);

  @override
  State<graduate_anxiety_scale> createState() => _graduate_anxiety_scaleState();
}

class _graduate_anxiety_scaleState extends State<graduate_anxiety_scale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('大学生焦虑测试量表')),
      body: SafeArea(
        child: Text("敬请期待"),
      ),
    );;
  }
}
