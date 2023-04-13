import 'package:flutter/material.dart';

class check_in extends StatefulWidget {
  const check_in({Key? key}) : super(key: key);

  @override
  State<check_in> createState() => _check_inState();
}

class _check_inState extends State<check_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 220, 203, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Row(children: [Text("每日打卡"),IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: const Icon(Icons.refresh)),],)
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 300,
            ),
            SizedBox
              (
              height: 40,
            ),
            ElevatedButton(onPressed: (){}, child: Text("今日已签到"))
          ],
        ));
  }
}
