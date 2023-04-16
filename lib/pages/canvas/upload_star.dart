import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';

import '../../system/common_image.dart';
import '../../system/userdata.dart';
import '../../system/userdata_func.dart';

class upload_star extends StatefulWidget {
  const upload_star({Key? key}) : super(key: key);

  @override
  State<upload_star> createState() => _upload_starState();
}

class _upload_starState extends State<upload_star> {
  final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;
  int _mode = 0;
  bool isSaved = false;
  List<bool> isSelectedType = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> intelligenceTypes = [
    "语言",
    "逻辑数学",
    "音乐",
    "肢体运作",
    "人际",
    "空间",
    "内省",
    "自然探索",
    "存在"
  ];

  void saveStarData() {
    var rng = new Random();
    DateTime now = DateTime.now();
    String formattedDate =
        '${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}';
    int index = basicData["star_case"];
    date_star[index] = formattedDate;
    title_star[index] = titleController.text;
    context_star[index] = returnType() + "智能";
    used_time_star[index] = returnTime();
    score_star[index] = rng.nextInt(4) + 6;
    intelligence_star[index] = returnType() + "智能";

    basicData["date_star"][index] = formattedDate;
    basicData["title_star"][index] = titleController.text;
    basicData["intelligence_star"][index] = returnType() + "智能";
    basicData["used_time_star"][index] = returnTime();
    basicData["score_star"][index] = rng.nextInt(4) + 6;

    if (isSelectedType[1] == true) {
      //star_data[index]["1_selected"] = true;
      basicData["1_pt"]++;
    }
    if (isSelectedType[2] == true) {
      //star_data[index]["2_selected"] = true;
      basicData["2_pt"]++;
    }
    if (isSelectedType[3] == true) {
      //star_data[index]["3_selected"] = true;
      basicData["3_pt"]++;
    }
    if (isSelectedType[4] == true) {
      //star_data[index]["4_selected"] = true;
      basicData["4_pt"]++;
    }
    if (isSelectedType[5] == true) {
      //star_data[index]["5_selected"] = true;
      basicData["5_pt"]++;
    }
    if (isSelectedType[6] == true) {
      //star_data[index]["6_selected"] = true;
      basicData["6_pt"]++;
    }
    if (isSelectedType[7] == true) {
      //star_data[index]["7_selected"] = true;
      basicData["7_pt"]++;
    }
    if (isSelectedType[8] == true) {
      //star_data[index]["8_selected"] = true;
      basicData["8_pt"]++;
    }
    if (isSelectedType[9] == true) {
      //star_data[index]["9_selected"] = true;
      basicData["9_pt"]++;
    }
    basicData["star_case"]++;
    isSaved = true;
  }

  String returnTime() {
    String tmp = "";
    switch (_mode) {
      case 0:
        tmp = "尚未选择";
        break;
      case 1:
        tmp = "0~10分钟";
        break;
      case 2:
        tmp = "10~30分钟";
        break;
      case 3:
        tmp = "30~60分钟";
        break;
      case 4:
        tmp = "60分钟以上";
        break;
      default:
        tmp = "尚未选择";
        break;
    }
    return tmp;
  }

  String returnType() {
    bool _flag = false;
    String tmp = "";
    for (int i = 1; i <= 9; i++) {
      if (isSelectedType[i] == true) {
        _flag = true;
        tmp += intelligenceTypes[i - 1];
        tmp += " ";
      }
    }
    if(!_flag)
    {
      tmp = "尚未选择";
    }

    return tmp;
  }

  final titleController = TextEditingController();

  void dispose() {
    // Clean up the controller when the widget is disposed.
    titleController.dispose();
    super.dispose();
  }

  void initState() {
    isSaved = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Text(
            "上传星星",
          )),
      body: SafeArea(
          child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/universe.jpg')),
            ),
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 19,
            left: MediaQuery.of(context).size.width / 15,
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 23,
            left: MediaQuery.of(context).size.width / 5,
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 15,
            left: MediaQuery.of(context).size.width / 3,
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 10,
            left: MediaQuery.of(context).size.width / 2,
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 6,
            left: MediaQuery.of(context).size.width / 1.75,
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 5.5,
            left: MediaQuery.of(context).size.width / 1.3,
          ),
          Positioned(
            child: Image.asset('assets/images/star.png'),
            top: MediaQuery.of(context).size.height / 9.5,
            left: MediaQuery.of(context).size.width / 1.2,
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Opacity(
                opacity: 0.75,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  //child: Expanded(
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          "上传星星",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Divider(),
                      TextFormField(
                        controller: titleController,
                        decoration: const InputDecoration(labelText: '任务描述'),
                      ),
                      //Divider(),
                      /*Expanded(
                        child: */
                      Container(
                        height: 60,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(

                                child: Text("所用时间:\n${returnTime()}",textAlign: TextAlign.center),
                                width: 120,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.bottomSheet(Container(
                                      color: Colors.white,
                                      child: Wrap(
                                        children: <Widget>[
                                          ListTile(
                                              leading: Icon(Icons.access_time),
                                              title: Text('0-10分钟'),
                                              onTap: () {
                                                // 设置点击事件为_mode=1
                                                setState(() {
                                                  _mode = 1;
                                                  Get.back();
                                                });
                                              }),
                                          ListTile(
                                              leading: Icon(Icons.access_time),
                                              title: Text('10-30分钟'),
                                              onTap: () {
                                                // 设置点击事件为_mode=2
                                                setState(() {
                                                  _mode = 2;
                                                  Get.back();
                                                });
                                              }),
                                          ListTile(
                                              leading: Icon(Icons.access_time),
                                              title: Text('30-60分钟'),
                                              onTap: () {
                                                // 设置点击事件为_mode=3
                                                setState(() {
                                                  _mode = 3;
                                                  Get.back();
                                                });
                                              }),
                                          ListTile(
                                              leading: Icon(Icons.access_time),
                                              title: Text('60分钟以上'),
                                              onTap: () {
                                                // 设置点击事件为_mode=4
                                                setState(() {
                                                  _mode = 4;
                                                  Get.back();
                                                });
                                              })
                                        ],
                                      ),
                                    ));
                                  },
                                  child: Text("点我选择"))
                            ]),
                      ),

                      Divider(),
                      //),
                      //Expanded(
                      //child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 120,
                            child: Text("类型选择:\n${returnType()}",textAlign: TextAlign.center,),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Get.bottomSheet(
                                  Container(
                                    color: Colors.white,
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: ListView(
                                      children: [
                                        ListTile(
                                          title: Text("语言智能"),
                                          subtitle: Text("掌握并运用语言、文字的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[1] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("逻辑数学智能"),
                                          subtitle:
                                              Text("逻辑思维推理、数学运算以及科学分析方面的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[2] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("音乐智能"),
                                          subtitle: Text("感受、欣赏、演奏、歌唱、创作音乐的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[3] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("肢体运作智能"),
                                          subtitle: Text(
                                              "运用全身或身体的某一部分，\n包括嘴和手，解决问题或创造产品的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[4] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("人际智能"),
                                          subtitle: Text("了解他人、与人合作的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[5] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("空间智能"),
                                          subtitle: Text(
                                              "针对所观察的事物，\n在脑海中形成一个模型或图案从而加以运用的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[6] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("内省智能"),
                                          subtitle:
                                              Text("深入并理解自己内心世界并用以指导自己行为的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[7] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("自然探索智能"),
                                          subtitle:
                                              Text("能认识植物、动物和其它自然环境(如云和石头)的能力"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[8] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                        ListTile(
                                          title: Text("存在智能"),
                                          subtitle: Text(
                                              "人们表现出的对生命、死亡和终极现实提出问题，\n并思考这些问题的倾向性"),
                                          onTap: () {
                                            setState(() {
                                              isSelectedType[9] = true;
                                            });
                                          },
                                        ),
                                        Divider(),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Text("点我选择")),
                        ],
                        //),
                      ),
                      /*Expanded(
                        child: */
                      Divider(),
                      Container(
                        child: Text("上传图片"),
                        alignment: Alignment.center,
                      ),
                      Divider(),
                      Container(
                          height: 130,
                          child: selectedAsset == null
                              ? TextButton(
                                  onPressed: () {
                                    setState(() {
                                      selectPhoto(
                                          context, basicData['star_case']);
                                    });
                                  },
                                  child: Text("点我选择图片"))
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectPhoto(
                                          context, basicData["star_case"]);
                                    });
                                  },
                                  child: AssetEntityImage(selectedAsset!,
                                      isOriginal: true),
                                )),

                      //),
                      Divider(),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: isSaved == false
                            ? ElevatedButton(
                                onPressed: () {
                                  if (selectedAsset == null) {
                                    Get.snackbar('提示', '您还未选择图片，请重新选择。',
                                        duration: Duration(milliseconds: 800));
                                  } else {
                                    setState(() {
                                      saveStarData();
                                      //storeStarDataSingle(basicData["star_case"] - 1);
                                      //storeStarData();
                                      saveBasicData();
                                      Get.snackbar('提示', '保存成功',
                                          duration:
                                              Duration(milliseconds: 800));
                                    });
                                  }
                                },
                                child: Text("保存"))
                            : ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text("返回")),
                      )
                    ],
                  ),
                ),
              )

              //)
              ),
          /*Positioned(
              top: MediaQuery.of(context).size.height / 1.35,
              left: MediaQuery.of(context).size.width / 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.to(my_star());
                      },
                      child: Text("我的星星")),
                  SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(my_rank());
                      },
                      child: Text("我的排名")),
                ],
              ))*/
        ],
      )),
    );
  }

/*_takePhoto() async {
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
  }*/
}
