import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/common_image.dart';
import 'package:heart_voyage/system/userdata_func.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../../system/userdata.dart';

class mood_cache_new extends StatefulWidget {
  const mood_cache_new({Key? key}) : super(key: key);

  @override
  State<mood_cache_new> createState() => _mood_cache_newState();
}

class _mood_cache_newState extends State<mood_cache_new> {
  final titleController = TextEditingController();
  final contextController = TextEditingController();
  bool isSaved_mood = false;

  void saveMoodData() {
    int index = basicData["mood_cache_case"];
    var rng = new Random();
    DateTime now = DateTime.now();
    String formattedDate =
        '${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}';

    basicData['date_mood'][index] = formattedDate;
    basicData["title_mood"][index] = titleController.text;
    basicData["context_mood"][index] = contextController.text;
    basicData["mood_cache_case"]++;
    isSaved_mood = true;
  }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    contextController.dispose();
    titleController.dispose();
    super.dispose();
  }

  /*final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 220, 203, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Text('新的积极日记'),
        ),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/treehole_bkgnd.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Opacity(
                opacity: 1,
                child: Container(
                  height: 400,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Opacity(opacity: 0.7,child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          controller: titleController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: '简单描述一下吧',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      )
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      /*TextField(
                          controller: contextController,
                          maxLines: 10,
                          decoration: InputDecoration(
                              hintText: "请输入多行文本",
                              border: OutlineInputBorder()),
                        ),*/

                      Text("点击上传图片：",style: TextStyle(color: Colors.white),),
                      Container(
                        height: 400,
                          alignment: Alignment.center,
                          child: selectedAsset_mood == null
                              ? TextButton(
                                  onPressed: () {
                                    setState(() {
                                      selectPhoto_mood(context,
                                          basicData['mood_cache_case']);
                                    });
                                  },
                                  child: Text("点击选择图片",style: TextStyle(color: Colors.white),))
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectPhoto_mood(context,
                                          basicData["mood_cache_case"]);
                                    });
                                  },
                                  child: AssetEntityImage(selectedAsset_mood!,
                                      isOriginal: true),
                                )),
                      isSaved_mood == false
                          ? ElevatedButton(
                              onPressed: () {
                                if (selectedAsset_mood == null) {
                                  Get.snackbar('提示', '您还未选择图片，请重新选择。',
                                      duration: Duration(milliseconds: 800));
                                } else {
                                  setState(() {
                                    saveMoodData();
                                    saveBasicData();

                                    Get.snackbar('提示', '保存成功~',
                                        duration: Duration(milliseconds: 800));
                                  });
                                }
                              },
                              child: Text('保存'))
                          : ElevatedButton(
                              onPressed: () {
                                selectedAsset_mood == null;
                                Get.back();
                              },
                              child: Text('返回'))
                    ],
                  ),
                  decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        //color: Colors.white,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ),
            ),
          ],
        ));
  }
}
