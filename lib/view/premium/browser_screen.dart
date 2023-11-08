import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter/material.dart';
import 'package:screen_mirror/component/widgets/custom_text_field.dart';
import 'package:screen_mirror/utils/utils.dart';

class BrowserPage extends StatefulWidget {
  const BrowserPage({Key? key}) : super(key: key);

  @override
  State<BrowserPage> createState() => _BrowserPageState();
}

class _BrowserPageState extends State<BrowserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Browser & Cast"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.cast),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomTextField(),
            20.ph,
            Text(
              "People are watching",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialMediaBox(
                  title: "Youtube",
                  imageURl: "img_3.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.youtube.com/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                    print("Could't Open this URl");
                    }
                  },
                ),
                SocialMediaBox(
                  title: "Ted",
                  imageURl: "img_6.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.ted.com/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                      print("Could't Open this URl");
                    }
                  },
                ),
              ],
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialMediaBox(
                  title: "Twitch",
                  imageURl: "img_7.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.twitch.tv/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                      print("Could't Open this URl");
                    }
                  },
                ),
                SocialMediaBox(
                  title: "DailyMotion",
                  imageURl: "img_8.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.dailymotion.com/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                      print("Could't Open this URl");
                    }
                  },
                ),
              ],
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialMediaBox(
                  title: "Vimeo",
                  imageURl: "img_9.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://vimeo.com/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                      print("Could't Open this URl");
                    }
                  },
                ),
                SocialMediaBox(
                  title: "Veoh",
                  imageURl: "img_10.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.veoh.com/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                      print("Could't Open this URl");
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SocialMediaBox extends StatelessWidget {
  SocialMediaBox({Key? key,required this.imageURl,this.onTap,required this.title}) : super(key: key);
  String imageURl;
  VoidCallback? onTap;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3,
                offset: Offset(0, 1),
                spreadRadius: 0,
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/social/$imageURl",height: 50,width: 50,),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
