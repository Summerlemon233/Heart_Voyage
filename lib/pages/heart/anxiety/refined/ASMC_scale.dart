import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ASMC_scale extends StatefulWidget {
  const ASMC_scale({Key? key}) : super(key: key);

  @override
  State<ASMC_scale> createState() => _ASMC_scaleState();
}

class _ASMC_scaleState extends State<ASMC_scale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('ASMC量表')),
      body: SafeArea(
        child: Text("敬请期待"),
      ),
    );
  }
}
