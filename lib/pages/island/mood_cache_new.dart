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
            Expanded(
              child: Column(
                children: [
                  Container(
                    //height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: [
                        TextField(
                          controller: titleController,
                          maxLines: 1,
                          decoration: InputDecoration(
                              hintText: "在这里输入标题",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: contextController,
                          maxLines: 10,
                          decoration: InputDecoration(
                              hintText: "请输入多行文本",
                              border: OutlineInputBorder()),
                        ),
                        Container(
                          height: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("点击上传图片："),
                              Container(
                                alignment: Alignment.center,
                                  child: selectedAsset_mood == null
                                      ? TextButton(
                                          onPressed: () {
                                            setState(() {
                                              selectPhoto_mood(context,
                                                  basicData['mood_cache_case']);
                                            });
                                          },
                                          child: Text("点击选择图片"))
                                      : Expanded(
                                          /*height: MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.height * 0.4,*/
                                          child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectPhoto_mood(context,
                                                  basicData["mood_cache_case"]);
                                            });
                                          },
                                          child: AssetEntityImage(
                                              selectedAsset_mood!,
                                              isOriginal: true),
                                        )))
                            ],
                          ),
                        ),
                        isSaved_mood == false
                            ? ElevatedButton(
                                onPressed: () {
                                  if (selectedAsset_mood == null) {
                                    Get.snackbar('提示', '您还未选择图片，请重新选择。',
                                        duration: Duration(milliseconds: 800));
                                  }
                                  else{
                                  setState(() {
                                    saveMoodData();
                                    saveBasicData();

                                    Get.snackbar('提示', '保存成功~',
                                        duration: Duration(milliseconds: 800));
                                  });}
                                },
                                child: Text('保存'))
                            : ElevatedButton(
                                onPressed: ()
                                {
                                  selectedAsset_mood == null;
                                  Get.back();
                                },
                                child: Text('返回'))
                        //ElevatedButton(onPressed: (){}, child: child)
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  ),
                ],
              ),
              flex: 1,
            ),
          ],
        ));
  }
}
