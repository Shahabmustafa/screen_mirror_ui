


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';

class Boxes extends StatelessWidget {
  Boxes({Key? key,required this.imagePath,required this.title,required this.description,required this.onTap}) : super(key: key);
  String? imagePath;
  String? title;
  String? description;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
