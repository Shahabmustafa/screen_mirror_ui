


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';

class GoogleDriveImage extends StatefulWidget {
  const GoogleDriveImage({Key? key}) : super(key: key);

  @override
  State<GoogleDriveImage> createState() => _GoogleDriveImageState();
}

class _GoogleDriveImageState extends State<GoogleDriveImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Drive"),
        actions: [
          Icon(Icons.more_horiz,size: 30,),
          20.pw,
          Icon(Icons.cast,size: 30,),
          10.pw
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                color: AppColor.buttonButton,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                    "Recents",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
              ),
            ),
          ),
          Column(
            children: [
              30.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/media/img.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_1.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_2.png",height: 130,width: 130,),
                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/media/img_3.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_4.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_5.png",height: 130,width: 130,),
                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/media/img.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_1.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_2.png",height: 130,width: 130,),
                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/media/img_3.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_4.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_5.png",height: 130,width: 130,),
                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/media/img.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_1.png",height: 130,width: 130,),
                  Image.asset("assets/images/media/img_2.png",height: 130,width: 130,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
