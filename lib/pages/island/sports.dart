// ignore_for_file: prefer_const_constructors, unnecessary_this, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:image_picker/image_picker.dart';

class sports extends StatefulWidget {
  sports({Key? key}) : super(key: key);

  @override
  State<sports> createState() => _sportsState();
}

class _sportsState extends State<sports> {
  final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;
  final titleController = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    //contextController.dispose();
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Text("运动解压打卡"),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '运动消耗200卡路里\n（不限运动）视为打卡成功，\n请在下方上传照片凭证。',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      controller: titleController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '简单描述一下运动内容吧',
                        //labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                            BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.8,
                    alignment: Alignment.center,
                    child: this._imageFile == null
                        ? TextButton(
                            child: Text("请选择图片"),
                            onPressed: () {
                              setState(() {
                                Get.defaultDialog(
                                    title: "选择上传图片",
                                    content: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: _takePhoto,
                                              child: const Text("点击拍照")),
                                          ElevatedButton(
                                              onPressed: _openGallery,
                                              child: const Text("打开相册")),
                                        ]));
                              });
                            },
                          )
                        : Image.file(File(_imageFile!.path)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: _takePhoto, child: const Text("点击拍照")),
                      ElevatedButton(
                          onPressed: _openGallery, child: const Text("打开相册")),
                    ],
                  )*/
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: ElevatedButton(
                onPressed: () {
                  if (this._imageFile != null) {
                    common_widgets.returnDialog(10);
                  } else {
                    Get.snackbar('提示', '打卡失败。请重新选择图片。');
                  }
                },
                child: Text('打卡'),
              ),
            ),
            /*Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar('提示', '您暂无打卡记录。');
                },
                child: Text('查看打卡日历'),
              ),
            )*/
          ],
        ),
      ),
    );
  }

  //拍照
  _takePhoto() async {
    XFile? pickedFile = await picker.pickImage(
        source: ImageSource.camera, maxHeight: 600, maxWidth: 600);

    if (pickedFile != null) {
      print(pickedFile.path);
      print(File(pickedFile.path));
      setState(() {
        _imageFile = pickedFile;
      });
    }
  }

  //打开文件夹选单张图片
  _openGallery() async {
    XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery, maxHeight: 600, maxWidth: 600);

    if (pickedFile != null) {
      print(pickedFile.path);
      print(File(pickedFile.path));
      setState(() {
        _imageFile = pickedFile;
      });
    }
  }

  // 选多张图片
  _selectMultiImage() async {
    List<XFile>? images = await picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _imageFiles = images;
      });
    }
  }
}
