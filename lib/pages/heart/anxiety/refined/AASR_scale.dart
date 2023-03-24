import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AASR_scale extends StatefulWidget {
  const AASR_scale({Key? key}) : super(key: key);

  @override
  State<AASR_scale> createState() => _AASR_scaleState();
}

class _AASR_scaleState extends State<AASR_scale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('AASR量表')),
      body: SafeArea(
        child: Text("敬请期待"),
      ),
    );
  }
}
