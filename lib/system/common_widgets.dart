

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';
import 'package:path/path.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';


String getDate() {
  DateTime now = DateTime.now();
  String temp = now.year.toString();
  temp += "年";
  temp += now.month.toString();
  temp += "月";
  temp += now.day.toString();
  temp += "日";
  return temp;
}

class mapListTile extends StatelessWidget {
  final String Area;
  final String AssetPath;
  final VoidCallback onTapFunc;
  const mapListTile({Key? key,required this.Area,required this.AssetPath,required this.onTapFunc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunc,
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        padding: EdgeInsets.all(5),
        height: 128,
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetPath),
              fit: BoxFit.fitHeight),
        ),
        child: SizedBox(
          child: Text(Area,style:TextStyle(color: Colors.white,fontSize: 25)),
        ),
      ),
    );

  }
}
Image returnPet() {
  switch (basicData['CurrPet']) {
    case 0:
      return Image(image: AssetImage('assets/images/pet0.png'));
    case 1:
      return Image(image: AssetImage('assets/images/pet1.png'));
    case 2:
      return Image(image: AssetImage('assets/images/pet2.png'));
    case 3:
      return Image(image: AssetImage('assets/images/pet3.png'));
    default:
      return Image(image: AssetImage('assets/images/pet0.png'));
  }
}





class common_widgets {
  static returnDialog(int rewards) {
    basicData['score'] += rewards;
    saveBasicData();
    return Get.defaultDialog(
        title: "提示",
        content: Column(
          children: [
            Text("恭喜您！您已经完成练习。\n您将增加10个成长值~"),
            SizedBox(
              height: 30,
            ),
            Text(
              "+${rewards}",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("总成长值：${basicData['score']}分"),
            ElevatedButton(onPressed: (){
              Get.back();
              Get.back();
            }, child: Text("点我退出"))
          ],
        ));
  }


}

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
