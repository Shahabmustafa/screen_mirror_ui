import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/setting/faq_screen.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.getPremium,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/img.png",color: Color(0xFFefa83b),),
                  const Text(
                    "Get Premium Access",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  5.ph,
                  const Text(
                    "No Limits, Best Experience",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          30.ph,
          Card(
            child: CupertinoListTile(
              leading: Icon(CupertinoIcons.arrow_clockwise),
              title: Text("FAQ"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FAQPage()));
              },
            ),
          ),
          Card(
            child: CupertinoListTile(
              leading: Icon(CupertinoIcons.arrow_2_circlepath),
              title: Text("Restore Purchases"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: CupertinoListTile(
              leading: Icon(Icons.message_outlined),
              title: Text("Send us a note"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: CupertinoListTile(
              leading: Icon(CupertinoIcons.doc_fill),
              title: Text("Privacy Policy"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: CupertinoListTile(
              leading: Icon(CupertinoIcons.doc_fill),
              title: Text("Terms of Use"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
