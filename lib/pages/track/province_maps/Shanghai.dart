import 'package:flutter/material.dart';
import '../../../system/common_widgets.dart';
class Shanghai extends StatefulWidget {
  const Shanghai({Key? key}) : super(key: key);

  @override
  State<Shanghai> createState() => _ShanghaiState();
}

class _ShanghaiState extends State<Shanghai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,title: Text("北京"),),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
