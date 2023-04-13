import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety/overall_judge.dart';
import 'package:heart_voyage/pages/heart/anxiety/refined_judge.dart';

class anxiety_test extends StatefulWidget {
  const anxiety_test({Key? key}) : super(key: key);

  @override
  State<anxiety_test> createState() => _anxiety_testState();
}

class _anxiety_testState extends State<anxiety_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Text('焦虑自测'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(overall_judge());
            },
            child: Center(
              child: Text(
                '焦虑水平总体评价',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
              foregroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
              minimumSize: MaterialStateProperty.all(Size(
                  MediaQuery.of(context).size.width * 0.8,
                  MediaQuery.of(context).size.height * 0.1)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(
                      color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(refined_judge());
            },
            child: Center(
              child: Text(
                '焦虑水平细化评价',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
              foregroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
              minimumSize: MaterialStateProperty.all(Size(
                  MediaQuery.of(context).size.width * 0.8,
                  MediaQuery.of(context).size.height * 0.1)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(
                      color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(anxiety_test());
            },
            child: Center(
              widthFactor: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                '焦虑的影响测试',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
              foregroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
              minimumSize: MaterialStateProperty.all(Size(
                  MediaQuery.of(context).size.width * 0.8,
                  MediaQuery.of(context).size.height * 0.1)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(
                      color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
