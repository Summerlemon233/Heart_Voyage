import 'package:flutter/material.dart';
import '../../../system/common_widgets.dart';
class Guangdong extends StatefulWidget {
  const Guangdong({Key? key}) : super(key: key);

  @override
  State<Guangdong> createState() => _GuangdongState();
}

class _GuangdongState extends State<Guangdong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,title: Text("广东"),),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
