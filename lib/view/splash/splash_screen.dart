import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screen_mirror/view/on%20boarding/on_boarding_screen.dart';
import 'package:screen_mirror/view/subscription/subscription.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  isLogin(){
    Timer(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionPage()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
                "assets/images/img_6.png",
                height: 250,
                width: 250,
              ),
          ),
        ],
      ),
    );
  }
}
