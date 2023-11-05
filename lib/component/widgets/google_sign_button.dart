import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';

class GoogleSignInButton extends StatelessWidget {
  GoogleSignInButton({Key? key,required this.onTap}) : super(key: key);
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 270,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: AppColor.whiteColor,
            boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 0,
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/google.png",height: 25,width: 25,),
            40.pw,
            Text(
              "Sign in with Google",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
