import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/island/XINXIE.dart';

import 'treehole_animation.dart';

class treehole extends StatefulWidget {
  const treehole({Key? key}) : super(key: key);

  @override
  State<treehole> createState() => _treeholeState();
}

class _treeholeState extends State<treehole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 220, 203, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Text('吐苦水树洞'),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('To:树洞',style: TextStyle(fontSize: 20),),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextField(

                      maxLines: 15,
                      decoration: InputDecoration(
                        //hintText: "请输入多行文本",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(30))
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),

                    ),
                  ),

                  Text(
                    '有什么不开心的事',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '可以和树洞讲讲看呀',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Get.to(treehole_animation());
                              },
                              child: Text('发送给北大心协')),
                          IconButton(
                              onPressed: () {
                                Get.to(XINXIE());
                              },
                              icon: Icon(Icons.question_mark)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(treehole_animation());
                          },
                          child: Text('让坏情绪飞远')),
                    ],
                  )
                  //ElevatedButton(onPressed: (){}, child: child)
                ],
              ),
              ),
          ],
        ));
  }
}
