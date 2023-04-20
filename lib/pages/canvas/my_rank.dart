import 'package:flutter/material.dart';
import 'package:heart_voyage/system/userdata.dart';

import '../../system/change_avatar.dart';
import '../../system/common_image.dart';
import '../../system/showdata.dart';
import '../../system/userdata_func.dart';

class my_rank extends StatefulWidget {
  const my_rank({Key? key}) : super(key: key);

  @override
  State<my_rank> createState() => _my_rankState();
}

class _my_rankState extends State<my_rank> {
  @override
  Widget build(BuildContext context) {
    bool _isSelectedAvatar = !(PhotoPath_avatar[0] == "");
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 220, 203, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          foregroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('我的排名'),
              IconButton(
                  onPressed: () {
                    setState(() {
                      readPhotoPath();
                      loadBasicData();
                      readPhotoPath_mood();
                      readPhotoPath_avatar();
                    });
                  },
                  icon: const Icon(Icons.refresh)),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.2, 20, MediaQuery.of(context).size.width * 0.2, 20),
                  child: Text("社区排名",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                Divider(),
                ListTile(
                  leading: Text("1",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      Avatar(
                          image: AssetImage("assets/images/stars/avatar1.jpg")),
                      SizedBox(width: 20,),
                      Text(showData[0]['userId'],style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ],
                  ),
                  trailing: Text("1970",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("2",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      Avatar(
                          image: AssetImage("assets/images/stars/avatar2.png")),
                      SizedBox(width: 20,),
                      Text(showData[1]['userId'],style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ],
                  ),
                  trailing: Text("1525",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("3",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      Avatar(
                          image: AssetImage("assets/images/stars/avatar3.png")),
                      SizedBox(width: 20,),
                      Text(showData[2]['userId'],style: TextStyle(color: Colors.white,fontSize: 20,),),
                    ],
                  ),
                  trailing: Text("1280",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("4",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      Avatar(
                          image: AssetImage("assets/images/stars/avatar4.jpg")),
                      SizedBox(width: 20,),
                      Text(showData[3]['userId'],style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                  trailing: Text("1215",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("5",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      Avatar(
                          image: AssetImage("assets/images/stars/avatar5.jpg")),
                      SizedBox(width: 20,),
                      Text(showData[4]['userId'],style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                  trailing: Text("1190",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("6",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      Avatar(
                          image: AssetImage("assets/images/stars/avatar6.jpg")),
                      SizedBox(width: 20,),
                      Text(showData[5]['userId'],style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                  trailing: Text("1030",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("...",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      /*Avatar(
                          image: AssetImage("assets/images/stars/avatar6.jpg")),
                      SizedBox(width: 20,),*/
                      Text("......",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  trailing: Text("...",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
                ListTile(
                  leading: Text("-",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                  title: Row(
                    children: [
                      _isSelectedAvatar
                          ? Avatar(image: imageFromFile(PhotoPath_avatar[0]).image)
                          : Avatar(image: AssetImage('assets/images/pet0.png')),
                      SizedBox(width: 20,),
                      Text(basicData['username'],style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                  ),
                  trailing: Text("${basicData['score']}",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Helvetica_Neue'),),
                ),
                Divider(),
              ],
            ),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/universe.jpg')),
            ),
          ),
        ));
  }
}
