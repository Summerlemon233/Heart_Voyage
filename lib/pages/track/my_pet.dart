import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/pet_change.dart';
import 'package:heart_voyage/system/common_widgets.dart';

import '../../system/userdata.dart';

class my_pet extends StatefulWidget {
  const my_pet({Key? key}) : super(key: key);

  @override
  State<my_pet> createState() => _my_petState();
}

class _my_petState extends State<my_pet> {
  final List<String> names_pet = ['狗狗', '狐狐', '小狼', '兔兔'];
  final List<String> cond_pet = ['点击选中', '已选中'];
  var nowSelected = basicData['CurrPet'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("我的心宠"),
            IconButton(onPressed: (){
              setState(() {

              });
            }, icon: Icon(Icons.refresh))],
        )),
      body: SafeArea
        (
        child: Column
          (
          children: [
            SizedBox(height: 30),
            Container(
              height: 200,
              padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.3, 20, MediaQuery.of(context).size.width * 0.3, 20),
              //child: returnPet(),
              decoration: BoxDecoration(
                image: DecorationImage(image: returnPet().image,fit: BoxFit.fitHeight),

              ),
            ),
           /*Align(
              child: common_widgets.returnPet(),
               alignment: Alignment.center,
            ),*/
            SizedBox(height: 40,),
            Text(
              '当前心宠：${names_pet[nowSelected]}',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                Get.to(pet_change());
              });

            }, child: Text("更换心宠")),
          ],
        ),
      ),
    );
  }
}
