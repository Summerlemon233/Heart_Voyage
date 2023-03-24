import 'package:flutter/material.dart';
import '../../../system/common_widgets.dart';
class Hong_Kong extends StatefulWidget {
  const Hong_Kong({Key? key}) : super(key: key);

  @override
  State<Hong_Kong> createState() => _Hong_KongState();
}

class _Hong_KongState extends State<Hong_Kong> {
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
