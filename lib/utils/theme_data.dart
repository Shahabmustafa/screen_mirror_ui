import 'package:flutter/material.dart';

import 'color_app.dart';

class AppTheme{
  static final appThemeData = ThemeData(
    appBarTheme:  AppBarTheme(
        color: AppColor.whiteColor,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        )
    ),
    scaffoldBackgroundColor: AppColor.whiteColor,
    useMaterial3: false,
  );
}