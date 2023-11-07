import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';

class WhiteBoardFile extends StatefulWidget {
  const WhiteBoardFile({Key? key}) : super(key: key);

  @override
  State<WhiteBoardFile> createState() => _WhiteBoardFileState();
}

class _WhiteBoardFileState extends State<WhiteBoardFile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.arrow_turn_up_left),
            10.pw,
            Icon(CupertinoIcons.arrow_turn_up_right),
            20.pw,
            Icon(CupertinoIcons.arrow_down),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              // Icons.delete_outline,
              CupertinoIcons.delete,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/img_8.png"),
          ],
        ),
      ),
    );
  }
}
