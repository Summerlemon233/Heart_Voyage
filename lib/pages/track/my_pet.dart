import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:heart_voyage/pages/track/pet_change.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:heart_voyage/system/userdata_func.dart';

import '../../system/userdata.dart';

class my_pet extends StatefulWidget {
  const my_pet({Key? key}) : super(key: key);

  @override
  State<my_pet> createState() => _my_petState();
}

class _my_petState extends State<my_pet> {
  final titleController = TextEditingController();
  final List<String> names_pet = ['狗狗', '狐狐', '猫猫', '兔兔'];
  final List<String> cond_pet = ['点击选中', '已选中'];
  var nowSelected = basicData['CurrPet'];

  void dispose() {
    // Clean up the controller when the widget is disposed.
    //contextController.dispose();
    titleController.dispose();
    super.dispose();
  }

  String returnPetName()
  {
    final _nameBox = GetStorage();
    if(_nameBox.read('namePet') != null)
    {
      return _nameBox.read('namePet');
    }
    else return names_pet[nowSelected];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("我的心宠"),
              IconButton(
                  onPressed: () {
                    setState(() {
                      loadBasicData();
                    });
                  },
                  icon: Icon(Icons.refresh))
            ],
          )),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              height: 200,
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.3,
                  20,
                  MediaQuery.of(context).size.width * 0.3,
                  20),
              //child: returnPet(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: returnPet().image, fit: BoxFit.fitHeight),
              ),
            ),
            /*Align(
              child: common_widgets.returnPet(),
               alignment: Alignment.center,
            ),*/
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              alignment: Alignment.center,
              child: Text(
                '当前心宠：${returnPetName()}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                controller: titleController,
                decoration: const InputDecoration(
                  //filled: true,
                  //fillColor: Colors.white,
                  labelText: '简单描述一下心宠的新名字吧',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final _nameBox = GetStorage();
                      _nameBox.write('namePet', titleController.text);
                    });
                  },
                  child: Text("保存心宠昵称")),
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.2,
                  0,
                  MediaQuery.of(context).size.width * 0.2,
                  0),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Get.offAll(pet_change());
                    });
                  },
                  child: Text("更换心宠")),
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.2,
                  0,
                  MediaQuery.of(context).size.width * 0.2,
                  0),
            ),

          ],
        ),
      ),
    );
  }
}
