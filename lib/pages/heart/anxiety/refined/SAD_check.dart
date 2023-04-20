import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SAD_check extends StatefulWidget {
  const SAD_check({Key? key}) : super(key: key);

  @override
  State<SAD_check> createState() => SAD_checkState();
}

class SAD_checkState extends State<SAD_check> {
  var score = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 220, 203, 1),
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(45, 73, 104, 1),
            foregroundColor: Colors.white,title: Text('查看分数',)),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Text('0-13分：表现正常，没有这方面问题。',style: TextStyle(fontSize: 20),),
              Text('13-18分：在这方面可能存在一定程度的问题，需要接受进一步的专业人员的检查。',style: TextStyle(fontSize: 20),),
              Text('18-28分：在这方面的问题，需要接受专业的帮助。',style: TextStyle(fontSize: 20),),
              SizedBox(height: 30,),
              Text('你的总分数为',style: TextStyle(fontSize: 30),),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 167, 63, 1),
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text("${score}分",style: TextStyle(fontSize: 50),),
              ),
            ],
          ),
        )

    );
  }
}
