import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.ph,
              Text("Here you can find answers to the questions you may have when connecting or pairing your device with a TV. Read carefully to find a solution."),
              20.ph,
              Text("How to start mirroring or casting?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              20.ph,
              Text("Once you're connect to the TV, you can start mirroring your screen or cast content such as photos, videos, YouTube and more. Follow the steps below to get started:"),
              20.ph,
              Text("1. Make sure you're connected to TV. "),
              10.ph,
              Text("2. Choose what you want to mirror or cast: photos, videos, YouTube, online content, IPTV or your phone screen."),
              10.ph,
              Text("3. Tap the corresponding tile to start. "),
              10.ph,
              Text("4. If you want to mirror your phone screen, just tap Screen Mirroring and adjust quality and other parameters."),
              20.ph,
              Text("I can't connect or find my TV.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              20.ph,
              Text("Usually, basic steps you need to complete are below:"),
              20.ph,
              Text("1. Make sure to check if your device and TV are on the same Wi-Fi network. Also check if you're not using VPN, proxies etc."),
              10.ph,
              Text("2. Tap the TV icon at the top right corner in order to establish connection. "),
              10.ph,
              Text("3. After the search is complete, select your TV from the list."),
              10.ph,
              Text("4. Complete all necessary steps on your TV."),
              20.ph,
              Text("In some rare cases, you need to paste the following link into your TV's browser to start mirroring (these cases sometimes occur on Samsung and LG TVs, it may also help if you have a TV from other manufacturer): "),
              20.ph,
              Text("The link will appear here once you're connected to TV."),
              20.ph,
              Text("The link will appear here once you're connected to TV.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
