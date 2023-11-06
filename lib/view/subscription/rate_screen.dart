import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/on%20boarding/on_boarding_screen.dart';

import '../../component/widgets/custom_button.dart';

class RatePage extends StatefulWidget {
  const RatePage({Key? key}) : super(key: key);

  @override
  State<RatePage> createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/img_6.png",
                color: AppColor.blackColor,
                height: 250,
                width: 250,
              ),
              20.ph,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rate your experience",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              20.ph,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Flexible(
                  child: Text(
                    "Your feedback helps us improve the app and add new features.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.star_fill,color: AppColor.starColor,size: 40,),
              5.pw,
              Icon(CupertinoIcons.star_fill,color: AppColor.starColor,size: 40,),
              5.pw,
              Icon(CupertinoIcons.star_fill,color: AppColor.starColor,size: 40,),
              5.pw,
              Icon(CupertinoIcons.star_fill,color: AppColor.starColor,size: 40,),
              5.pw,
              Icon(CupertinoIcons.star_fill,color: AppColor.starColor,size: 40,),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundButton(
                  title: "Rate it",
                  onTap: (){},
                ),
              ),
              20.ph,
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
                },
                child: Text("Skip"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
