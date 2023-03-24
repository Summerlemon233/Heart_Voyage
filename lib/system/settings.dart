import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/about_us.dart';
import 'package:heart_voyage/system/friend.dart';
import 'package:heart_voyage/system/themes.dart';
import '../main.dart';
import '../pages/tabs.dart';
import './login.dart';
import './register.dart';
import './userdata.dart';

import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import 'change_avatar.dart';
import 'common_image.dart';
import 'userdata_func.dart';
import './common_widgets.dart';

class settings extends StatefulWidget {
  //final String username;

  //settings({required this.username});

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool isDarkMode = Get.isDarkMode;
  AssetEntity? _avatar;
  //bool _tmp = Get.isDarkMode;
  bool _switchSelected = Get.isDarkMode;


  /*Future<void> _pickAvatar() async {
    final result = await AssetPicker.pickAssets(context, maxAssets: 1);
    if (result != null && result.isNotEmpty) {
      setState(() => _avatar = result.first);
    }
  }*/
  @override


  @override
  Widget build(BuildContext context) {

    var _readPhotoPath_avatar_var = readPhotoPath_avatar();
    bool _isSelectedAvatar = !(PhotoPath_avatar[0] == "");
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[Text('设置'),
          IconButton(onPressed: (){
            setState(() {
              loadBasicData();
              readPhotoPath_avatar();
            });
          }, icon: Icon(Icons.refresh))],
      ),),
      body: ListView(
        children: [
          ListTile(
            leading:  Avatar(image: _isSelectedAvatar
                ? imageFromFile(PhotoPath_avatar[0]).image
                :common_widgets.returnPet()!.image),
            title: Text("${basicData['username']}"),
            onTap: (){
              setState(() {
                Get.to(change_avatar());
              });
            },//_pickAvatar,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('我的好友'),
            onTap: () {
              setState(() {
                Get.to(friend());
              });
              // 点击我的好友后的操作
              print('我的好友');
            },
          ),
          /*ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('切换主题'),
            onTap: () {
              // 点击切换主题后的操作
              print('切换主题');
            },
          ),*/
          /*SwitchListTile(
            secondary: Icon(Icons.nightlight_round),
            title: Text('夜间模式'),
            onChanged: (value) {
              setState(() {
                Get.changeThemeMode(_switchSelected? ThemeMode.dark : ThemeMode.light);
                  _switchSelected = !_switchSelected;
              });
              // 切换夜间模式后的操作
              //print('夜间模式：$value');
            },
            value: _switchSelected,
          ),*/
          SwitchListTile(
            secondary: Icon(Icons.nightlight_round),
            title: Text('夜间模式'),
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
                Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('关于我们'),
            onTap: () {
              setState(() {
                Get.to(about_us());
              });
              // 点击退出登录后的操作
              //log_out;
              print('退出登录');
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('退出登录'),
            onTap: () {
              setState(() {

              });
              // 点击退出登录后的操作
              //log_out;
              print('退出登录');
            },
          ),
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
    );
  }
}
