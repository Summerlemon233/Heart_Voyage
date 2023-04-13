import 'package:flutter/material.dart';
import '../../../system/common_widgets.dart';
class Beijing extends StatefulWidget {
  const Beijing({Key? key}) : super(key: key);

  @override
  State<Beijing> createState() => _BeijingState();
}

class _BeijingState extends State<Beijing> {
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
