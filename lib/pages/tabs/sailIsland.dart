import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/island/mood_cache.dart';
import 'package:heart_voyage/pages/island/practice.dart';
import 'package:heart_voyage/pages/island/treehole.dart';

import '../../system/common_image.dart';
import '../../system/userdata_func.dart';

class sailIsland extends StatefulWidget {
  const sailIsland({Key? key}) : super(key: key);

  @override
  State<sailIsland> createState() => _sailIslandState();
}

class _sailIslandState extends State<sailIsland> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
              0, MediaQuery.of(context).size.width * 0.1, 0),
          child: ElevatedButton(
            onPressed: () {
              Get.to(treehole());
            },
            child: Text(
              "吐苦水树洞",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
              foregroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
              minimumSize: MaterialStateProperty.all(Size(
                  MediaQuery.of(context).size.width * 0.8,
                  MediaQuery.of(context).size.height * 0.1)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(
                      color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
              0, MediaQuery.of(context).size.width * 0.1, 0),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
                foregroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.1)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                        color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  readPhotoPath_mood();
                  loadBasicData();
                  readPhotoPath();
                  Get.to(mood_cache());
                });
              },
              child: Text(
                "愉快情绪寄存站",
                style: TextStyle(
                  fontSize: 32,
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
              0, MediaQuery.of(context).size.width * 0.1, 0),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(215, 169, 83, 1)),
                foregroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(90, 66, 53, 1)),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.1)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                        color: Color.fromRGBO(90, 66, 53, 1), width: 2.0),
                  ),
                ),
              ),
              onPressed: () {
                Get.to(practice());
              },
              child: Text(
                "情绪调节",
                style: TextStyle(
                  fontSize: 32,
                ),
              )),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Container(
            alignment: Alignment.bottomLeft,
            child: Image(
              image: AssetImage('assets/images/globe.png'),
            )
            /*decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/globe.jpg'),
                //fit: BoxFit.cover
            ),
          ),*/
            ),
      ],
    );
  }
}
