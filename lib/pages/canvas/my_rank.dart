import 'package:flutter/material.dart';
import 'package:get/get.dart';

class my_rank extends StatefulWidget {
  const my_rank({Key? key}) : super(key: key);

  @override
  State<my_rank> createState() => _my_rankState();
}

class _my_rankState extends State<my_rank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('我的排名')),
      body: SafeArea(
        child: Text("敬请期待"),
      ),
    );;
  }
}
