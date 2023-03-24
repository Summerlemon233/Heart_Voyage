import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TAS_scale extends StatefulWidget {
  const TAS_scale({Key? key}) : super(key: key);

  @override
  State<TAS_scale> createState() => _TAS_scaleState();
}

class _TAS_scaleState extends State<TAS_scale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('TAS量表')),
      body: SafeArea(
        child: Text("敬请期待"),
      ),
    );
  }
}
