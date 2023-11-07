import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';

class ShowNavigatorIPTV extends StatefulWidget {
  const ShowNavigatorIPTV({Key? key}) : super(key: key);

  @override
  State<ShowNavigatorIPTV> createState() => _ShowNavigatorIPTVState();
}

class _ShowNavigatorIPTVState extends State<ShowNavigatorIPTV> {
  List<String> title = [
    "Cinevault Westerns",
    "Classic Arts Showcase",
    "Classic Moives Channel",
    "Classic TV Comedy",
  ];

  List<String> Links = [
    "https://www.cinevaulttv.com/",
    "https://www.classicartsshowcase.org/",
    "https://www.tcm.com/",
    "https://player.teleon.tv/en/channel/classic-tv-comedy-us"
  ];

  List<String> image = [
    "assets/images/channels/cinevault_master.png",
    "assets/images/channels/logo.png",
    "assets/images/channels/image_3.png",
    "assets/images/channels/teleon.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Classic"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.cast,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context,index){
          return CupertinoListTile(
            leading: Image.asset(image[index],height: 100,width: 100,color: AppColor.blackColor,),
            title: Text(title[index]),
            subtitle: Text(Links[index]),
          );
        },
      ),
    );
  }
}
