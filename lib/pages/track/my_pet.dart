import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/pet_change.dart';
import 'package:heart_voyage/system/common_widgets.dart';

class my_pet extends StatefulWidget {
  const my_pet({Key? key}) : super(key: key);

  @override
  State<my_pet> createState() => _my_petState();
}

class _my_petState extends State<my_pet> {
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
            Container(
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(image: returnPet().image,fit: BoxFit.fitHeight),

              ),
            ),
           /*Align(
              child: common_widgets.returnPet(),
               alignment: Alignment.center,
            ),*/
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
