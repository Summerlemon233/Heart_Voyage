import 'package:flutter/material.dart';
import 'package:heart_voyage/system/common_image.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:heart_voyage/system/userdata_func.dart';

class Avatar extends StatefulWidget {
  final ImageProvider image;

  const Avatar({Key? key, required this.image}) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectPhoto_avatar(context);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue),
        ),
        child: CircleAvatar(
          backgroundImage: widget.image,
          radius: 50,
        ),
      ),
    );
  }
}

class change_avatar extends StatefulWidget {
  @override
  _change_avatarState createState() => _change_avatarState();
}

class _change_avatarState extends State<change_avatar> {
  bool isSelectedAvatar = !(PhotoPath_avatar[0] == "");

  @override
  Widget build(BuildContext context) {
    var _readPhotoPath_avatar_var = readPhotoPath_avatar();
    return Scaffold(
      //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('上传头像'),
            IconButton(
                onPressed: () {
                  setState(() {
                    loadBasicData();
                    readPhotoPath_avatar();
                  });
                },
                icon: Icon(Icons.refresh))
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            isSelectedAvatar
                ? Avatar(image: imageFromFile(PhotoPath_avatar[0]).image)
                : returnPet(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text("${basicData["username"]}"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectPhoto_avatar(context);
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add_a_photo),
                    Text("更换头像"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
