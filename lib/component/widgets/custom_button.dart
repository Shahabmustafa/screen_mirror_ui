import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color_app.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key,required this.title,required this.onTap}) : super(key: key);
  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.buttonButton,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: AppColor.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
