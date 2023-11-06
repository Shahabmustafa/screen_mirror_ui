import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';

class WhiteBoardPage extends StatefulWidget {
  const WhiteBoardPage({Key? key}) : super(key: key);

  @override
  State<WhiteBoardPage> createState() => _WhiteBoardPageState();
}

class _WhiteBoardPageState extends State<WhiteBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/img_2.png"),
          20.ph,
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 110),
                child: Text("Welcome to Whiteboard",style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              20.ph,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Express yourself on your iPhone and mirror it to a bigger TV screen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              30.ph,
              ListTile(
                leading: Image.asset('assets/images/whiteboard/img.png',height: 50,width: 50,),
                title: Text("Use it in classrooms for educational purpose"),
              ),
              30.ph,
              ListTile(
                leading: Image.asset('assets/images/whiteboard/img_1.png',height: 50,width: 50),
                title: Text("Doodle and have fun with your kids at home"),
              ),
              30.ph,
              ListTile(
                leading: Image.asset('assets/images/whiteboard/img_2.png',height: 50,width: 50),
                title: Text("Easily share your ideas with colleagues and partners"),
              ),
            ],
          ),
          80.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.buttonButton,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text("Let's go",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColor.whiteColor,
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
