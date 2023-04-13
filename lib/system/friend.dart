import 'dart:math';

import 'package:flutter/material.dart';

class friend extends StatefulWidget {
  @override
  _friendState createState() => _friendState();
}

class _friendState extends State<friend> {
  final TextEditingController _controller = TextEditingController();
  String _myCode = '';

  @override
  void initState() {
    super.initState();
    // 初始化我的好友代码
    _myCode = generateFriendCode();
  }

  // 生成5位大写字母或数字的组合作为好友代码
  String generateFriendCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(5, (index) => chars[random.nextInt(chars.length)])
        .join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,title: Text('添加好友')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              '我的好友代码',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              '$_myCode',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, fontFamily: 'JetBrains_Mono'),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: '输入好友代码',
                      border: OutlineInputBorder(),
                      hintText: "不区分大小写"),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
              ElevatedButton(
                onPressed: () {
                  // 点击确认按钮后的操作
                  final friendCode = _controller.text;
                  print('添加好友：$friendCode');
                },
                child: Text('确认'),
              ),
            ],
          ),
          Divider(),

          //SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        ]),
      ),
    );
  }
}
