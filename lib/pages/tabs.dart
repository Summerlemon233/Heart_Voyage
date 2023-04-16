//This page contains the appBar and appTab of the App.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/common_image.dart';
import 'package:heart_voyage/system/friend.dart';
import 'package:heart_voyage/system/settings.dart';
import 'package:heart_voyage/system/sign/sign.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';

import './tabs/sailCanvas.dart';
import './tabs/sailIsland.dart';
import './tabs/sailTrack.dart';
import './tabs/seekHeart.dart';
import '../system/change_avatar.dart';
import '../system/login.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Widget> _pages = [
    seekHeart(),
    sailIsland(),
    sailCanvas(),
    sailTrack()
  ];
  final List<Widget> _drawer = [drawerListLogined(), drawerListNotLogined()];

  int _currentIndex = 0;
  late int _currentDrawer;

  @override
  void initState() {
    loadBasicData();
    WidgetsBinding.instance.addPostFrameCallback((_){
      if(basicData['isLogin'] == false)
      {
        Get.offAll(login());
      }
      if(basicData['isTodaysigned'] = false)
      {
        Get.offAll(sign());
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _currentDrawer = basicData['isLogin'] ? 0 : 1;
    var _readPhotoPath_avatar_var = readPhotoPath_avatar();
    /*Get.defaultDialog(
      title: "提示",
      content: ListView(
        children: [
          Container(
            child: Text("您还没有登录，请前往登录页面登录。"),
          )
        ],
      )
    )*/
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("心旅"),
              IconButton(
                  onPressed: () {
                    setState(() {
                      loadBasicData();
                      readPhotoPath();
                      readPhotoPath_avatar();
                      readPhotoPath_mood();
                    });
                  },
                  icon: Icon(Icons.refresh))
            ],
          )),
      drawer: Drawer(
        child: _drawer[_currentDrawer],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        fixedColor: Color.fromRGBO(215, 169, 83, 1),
        unselectedItemColor: Color.fromRGBO(229, 220, 203, 1),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 3) {
              loadBasicData();
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "寻心",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            label: "心岛",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sailing),
            label: "扬帆",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_road),
            label: "航迹",
            backgroundColor: Colors.blue,
          )
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class drawerListLogined extends StatefulWidget {
  const drawerListLogined({Key? key}) : super(key: key);

  @override
  State<drawerListLogined> createState() => _drawerListLoginedState();
}

class _drawerListLoginedState extends State<drawerListLogined> {
  bool isDarkMode = Get.isDarkMode;
  bool _isSelectedAvatar = !(PhotoPath_avatar[0] == "");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            basicData['username'],
            style: TextStyle(color: Colors.black),
          ),
          accountEmail: Text(
            basicData['email'],
            style: TextStyle(color: Colors.black),
          ),
          currentAccountPicture: _isSelectedAvatar
              ? Avatar(image: imageFromFile(PhotoPath_avatar[0]).image)
              : Avatar(image: _returnPet().image),
          onDetailsPressed: () {},
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/bkgnd.jpg')),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.refresh),
                title: Text("刷新"),
                onTap: () {
                  setState(() {
                    readPhotoPath_avatar();
                  });
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("设置"),
                onTap: () => Get.to(settings()),
              ),
              Divider(),
              /* ListTile(
                leading: Icon(Icons.person),
                title: Text("个人中心"),
              ),*/
              /* Divider(),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text("消息中心"),
              ),*/
              ListTile(
                  leading: Icon(Icons.group_add),
                  title: Text("我的好友"),
                  onTap: () {
                    setState(() {
                      Get.to(() => friend());
                    });
                  }),
              Divider(),
              /*SwitchListTile(
                secondary: Icon(Icons.nightlight_round),
                title: Text('夜间模式'),
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                    Get.changeThemeMode(
                        isDarkMode ? ThemeMode.dark : ThemeMode.light);
                  });
                },
              ),
              Divider(),*/
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("退出登录"),
                onTap: () {
                  Get.offAll(login());
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('关闭应用'),
                onTap: () {
                  setState(() {
                    saveBasicData();
                    SystemNavigator.pop();
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Image _returnPet() {
    Image _tmp;
    switch (basicData['CurrPet']) {
      case 0:
        _tmp = Image(image: AssetImage('assets/images/pet0.png'));
        break;
      case 1:
        _tmp = Image(image: AssetImage('assets/images/pet1.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet1.png'));
      case 2:
        _tmp = Image(image: AssetImage('assets/images/pet2.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet2.png'));
      case 3:
        _tmp = Image(image: AssetImage('assets/images/pet3.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet3.png'));
      default:
        _tmp = Image(image: AssetImage('assets/images/pet0.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet0.png'));
    }
    return /*Obx(() => Container
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue),
      ),
      child: CircleAvatar(
        backgroundImage: _tmp.image,
        radius: 50,
      )))*/
        _tmp;
  }
}

class drawerListNotLogined extends StatefulWidget {
  const drawerListNotLogined({Key? key}) : super(key: key);

  @override
  State<drawerListNotLogined> createState() => _drawerListNotLoginedState();
}

class _drawerListNotLoginedState extends State<drawerListNotLogined> {
  bool isDarkMode = Get.isDarkMode;
  bool _switchSelected = Get.isDarkMode;
  bool _isSelectedAvatar = !(PhotoPath_avatar[0] == "");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            basicData['username'],
            style: TextStyle(color: Colors.black),
          ),
          accountEmail: Text(
            basicData['email'],
            style: TextStyle(color: Colors.black),
          ),
          currentAccountPicture: _isSelectedAvatar
              ? Avatar(image: imageFromFile(PhotoPath_avatar[0]).image)
              : Avatar(image: _returnPet().image),
          onDetailsPressed: () {},
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bkgnd.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.refresh),
                title: Text("刷新"),
                onTap: () {
                  setState(() {
                    readPhotoPath_avatar();
                  });
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("登录"),
                onTap: () {
                  Get.to(login());
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("设置"),
                onTap: () {
                  setState(() {
                    Get.to(settings());
                  });
                },
              ),
              /*Divider(),
              SwitchListTile(
                secondary: Icon(Icons.nightlight_round),
                title: Text('夜间模式'),
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                    Get.changeThemeMode(
                        isDarkMode ? ThemeMode.dark : ThemeMode.light);
                  });
                },
              ),*/
              Divider(),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('关闭应用'),
                onTap: () {
                  setState(() {
                    saveBasicData();
                    SystemNavigator.pop();
                  });
                },
              ),
              /*ListTile(
                leading: Icon(Icons.settings),
                title: Text("test"),
                onTap: ()
                {
                  setState(() {
                    Get.changeTheme(Theme_brush_light);
                  });
                },
              ),
              Divider(),*/
            ],
          ),
        ),
      ],
    );
  }

  Image _returnPet() {
    Image _tmp;
    switch (basicData['CurrPet']) {
      case 0:
        _tmp = Image(image: AssetImage('assets/images/pet0.png'));
        break;
      case 1:
        _tmp = Image(image: AssetImage('assets/images/pet1.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet1.png'));
      case 2:
        _tmp = Image(image: AssetImage('assets/images/pet2.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet2.png'));
      case 3:
        _tmp = Image(image: AssetImage('assets/images/pet3.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet3.png'));
      default:
        _tmp = Image(image: AssetImage('assets/images/pet0.png'));
        break;
      //return Image(image: AssetImage('assets/images/pet0.png'));
    }
    return /*Obx(() => Container
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue),
      ),
      child: CircleAvatar(
        backgroundImage: _tmp.image,
        radius: 50,
      )))*/
        _tmp;
  }
}
