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
      appBar: AppBar(title: Text("北京"),),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
