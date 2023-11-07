import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        actions: [
          Icon(
            Icons.delete_outline,
            size: 30,
          )
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
