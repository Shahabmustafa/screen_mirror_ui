import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/subscription/ready_subscription.dart';

import '../on boarding/on_boarding_screen.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<SubscriptionPage> {
  bool year = false;
  bool month = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
                  },
                  child: Icon(
                    CupertinoIcons.clear,
                      color: Colors.white,
                  ),
                ),
              ],
            ),
            20.ph,
            Text(
              "Get access to all features for the best experience",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            20.ph,
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.cast,color: AppColor.buttonButton,size: 30,),
                    15.pw,
                    Text("Unlimited Mirroring",style: TextStyle(color: AppColor.whiteColor,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
                15.ph,
                Row(
                  children: [
                    Icon(CupertinoIcons.stopwatch,color: Colors.red,size: 30,),
                    15.pw,
                    Text("No Delay",style: TextStyle(color: AppColor.whiteColor,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
                15.ph,
                Row(
                  children: [
                    Icon(Icons.wallet,color: Color(0xFFBC9E02),size: 30,),
                    15.pw,
                    Text("IPTV",style: TextStyle(color: AppColor.whiteColor,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
                15.ph,
                Row(
                  children: [
                    Image.asset("assets/images/img_4.png",height: 35,width: 35,),
                    15.pw,
                    Text("No Ads",style: TextStyle(color: AppColor.whiteColor,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
                15.ph,
                Row(
                  children: [
                    Icon(Icons.connected_tv,color: AppColor.buttonButton,size: 30,),
                    15.pw,
                    Text("Work with all TVs",style: TextStyle(color: AppColor.whiteColor,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ],
            ),
            20.ph,
            PriceCard(
                description: "Yearly access. Only \$2.49/month 3day free trial, billed yearly \$29.99",
                value: year,
                border: Border.all(
                  color: year == true ? AppColor.buttonButton : Colors.grey,
                  width: 4,
                ),
                onChange: (value){
                  year = value!;
                  setState(() {

                  });
                }
            ),
            20.ph,
            PriceCard(
                description: "Monthly access. Only \$9.99/month 3 day free trial, billed monthly",
                border: Border.all(
                  color: month == true ? AppColor.buttonButton : Colors.grey,
                  width: 5,
                ),
                value: month,
                onChange: (value){
                  month = value!;
                  setState(() {

                  });
                }
            ),
            20.ph,
            Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.star_fill,color: AppColor.starColor,),
                    Icon(CupertinoIcons.star_fill,color: AppColor.starColor,),
                    Icon(CupertinoIcons.star_fill,color: AppColor.starColor,),
                    Icon(CupertinoIcons.star_fill,color: AppColor.starColor,),
                    Icon(CupertinoIcons.star_fill,color: AppColor.starColor,),
                  ],
                ),
                5.ph,
                Row(
                  children: [
                    Text(
                      '"Best app, very easy to use, I am loving it.”',
                      style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 18
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'by, Farhad',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                      ),
                    ),
                  ],
                ),
              ],
            ),
            10.ph,
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReadySubscriptionPage()));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.buttonButton,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ),
            ),
            10.ph,
            const Text(
              "By continuing your accept our:",
              style: TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
              ),
            ),
            5.ph,
            const Text(
              "Terms of Service | Privacy Policy",
              style: TextStyle(
                color: AppColor.buttonButton,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PriceCard extends StatelessWidget {
  PriceCard({Key? key,required this.description,required this.value,required this.onChange,required this.border}) : super(key: key);

  String description;
  void Function(bool?) onChange;
  bool value;
  BoxBorder border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Flexible(
              child: Text(
                description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 28,
                width: 28,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: AppColor.whiteColor,
                  ),
                ),
                child: Checkbox(
                  checkColor: AppColor.whiteColor,
                  // shape: OutlineInputBorder(),
                  value: value,
                  onChanged: onChange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
