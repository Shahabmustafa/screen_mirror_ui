


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt),
        title: GoPremium(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          20.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Boxes(
                title: "Browser",
                description: "Cast from websites",
                imagePath: "img.png",
              ),
              Boxes(
                title: "Media",
                description: "Cast photos & videos",
                imagePath: "img_1.png",
              ),
            ],
          ),
          20.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Boxes(
                title: "IPTV",
                description: "Watch TV channels",
                imagePath: "img_2.png",
              ),
              Boxes(
                title: "Youtube",
                description: "Watch Youtube",
                imagePath: "img_3.png",
              ),
            ],
          ),
          20.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Boxes(
                title: "Google Drive",
                description: "Cast files",
                imagePath: "img_4.png",
              ),
              Boxes(
                title: "Google Photos",
                description: "Cast media",
                imagePath: "img_5.png",
              ),
            ],
          ),
          20.ph,
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: ListTile(
                title: const Text(
                  "WhiteBoard",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text("Express yourself",style: TextStyle(fontSize: 16),),
                trailing: Image.asset("assets/images/img_1.png",height: 50,width: 50,),
              ),
            ),
          ),
        ),
          20.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.buttonButton,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: ListTile(
                  title: Text(
                    "Screen mirroring",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  subtitle: Text("Mirror your screen to TV",style: TextStyle(fontSize: 16,color: AppColor.whiteColor),),
                  trailing: Image.asset("assets/images/img_3.png",height: 50,width: 50,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container GoPremium() {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 0,
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/img.png",height: 30,width: 30,),
          10.pw,
          Text("Go Premium"),
        ],
      ),
      );
  }
}



class Boxes extends StatelessWidget {
  Boxes({Key? key,required this.imagePath,required this.title,required this.description}) : super(key: key);
  String? imagePath;
  String? title;
  String? description;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 190,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 0,
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/social/$imagePath",height: 35,width: 35,),
              Icon(CupertinoIcons.arrow_up_right),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                title.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              5.ph,
              Text(description.toString(),),
            ],
          ),
        ],
      ),
    );
  }
}

