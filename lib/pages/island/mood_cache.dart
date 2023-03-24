import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/island/mood_cache_new.dart';

import '../../system/common_image.dart';
import '../../system/userdata.dart';
import '../../system/userdata_func.dart';

class mood_cache extends StatefulWidget {
  const mood_cache({Key? key}) : super(key: key);

  @override
  State<mood_cache> createState() => _mood_cacheState();
}

class _mood_cacheState extends State<mood_cache> {
  @override
  void initState() {
    loadBasicData();
    readPhotoPath_mood();
    //将之前保存到本地的图片加载到临时缓冲区变量List内
    /*for (int i = 0; i <= basicData['star_case']; i++) {
      loadPhoto(i);
    }*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('我的积极日记'),
            IconButton(
                onPressed: () {
                  setState(() {
                    readPhotoPath_mood();
                    loadBasicData();
                    readPhotoPath();
                    print("${photoPath_mood}");
                  });
                },
                icon: const Icon(Icons.refresh)),
          ],
        ),
      ),
      body: basicData["mood_cache_case"] == 0
          ? Center(
              child: Text("点击刷新键以查看记录"),
            )
          : ListView.separated(
              itemCount:
                  basicData["mood_cache_case"], //basicData["mood_cache_case"],
              itemBuilder: (context, index) => ListTile(
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: photoPath_mood[index] != null
                      ? imageFromFile(photoPath_mood[index])
                      : Image(image: AssetImage('assets/images/star.png')),
                ),
                title: Text('任务描述：${basicData["title_mood"][index]}'),
                subtitle: Text('创建时间：${basicData["date_mood"][index]}'),
                onTap: () {
                  print('点击了第$index个ListTile');
                },
              ),
              separatorBuilder: (context, index) => Divider(),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.to(mood_cache_new());
        },
      ),
    );
  }
}
