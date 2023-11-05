import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/theme_data.dart';
import 'package:screen_mirror/view/on%20boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appThemeData,
      home: OnBoardingPage(),
    );
  }
}

