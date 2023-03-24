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
      appBar: AppBar(title: Text("北京"),),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
