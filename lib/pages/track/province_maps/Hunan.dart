import 'package:flutter/material.dart';
import '../../../system/common_widgets.dart';
class Hunan extends StatefulWidget {
  const Hunan({Key? key}) : super(key: key);

  @override
  State<Hunan> createState() => _HunanState();
}

class _HunanState extends State<Hunan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("北京"),),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
