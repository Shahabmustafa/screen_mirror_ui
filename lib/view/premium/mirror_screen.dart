import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';

import '../../utils/color_app.dart';

class MirrorPage extends StatefulWidget {
  const MirrorPage({Key? key}) : super(key: key);

  @override
  State<MirrorPage> createState() => _MirrorPageState();
}

class _MirrorPageState extends State<MirrorPage> {
  bool rotate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mirror"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.cast),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CupertinoListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColor.buttonButton,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(CupertinoIcons.arrow_clockwise,color: Colors.white,),
                ),
                title: Text("Auto-Rotate"),
                trailing: CupertinoSwitch(
                  value: rotate,
                  onChanged: (value){
                    rotate = value;
                    setState(() {

                    });
                  },
                ),
              ),
              CupertinoListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF9578b4),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(CupertinoIcons.tv,color: Colors.white,),
                  ),
                  title: const Text("Quality"),
                  trailing: const Row(
                    children: [
                      Text(
                        "Optimized",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )
              ),
            ],
          ),
          Text("Need Help?"),
          Column(
            children: [
             Image.asset("assets/images/img_7.png",height: 100,width: 100,),
              Text("Tap to Start Mirroring"),
              100.ph,
            ],
          ),
        ],
      ),
    );
  }
}
