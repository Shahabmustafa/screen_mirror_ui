import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/premium/browser_screen.dart';
import 'package:screen_mirror/view/premium/iptv_screen.dart';
import 'package:screen_mirror/view/premium/mirror_screen.dart';
import 'package:screen_mirror/view/premium/setting.dart';
import 'package:screen_mirror/view/premium/onboard_white_board_screen.dart';
import 'package:screen_mirror/view/subscription/ready_subscription.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import '../component/widgets/boxes_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: (){
            showModalBottomSheet(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context){
                  return Column(
                    children: [
                      5.ph,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 180),
                        child: Divider(
                          color: Colors.black,
                          thickness: 4,
                        ),
                      ),
                      20.ph,
                      Text(
                        "Select Your Device",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      10.ph,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Make sure your phone and smart TV are connected to the same Wi-fi network. If your TV is not on the list, please reboot it (power reset) and try again.",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      10.ph,
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Airplay Devices",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.ph,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          elevation: 0.5,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          child: ListTile(
                            leading: Image.asset("assets/images/img_9.png",height: 30,width: 30,),
                            title: Text("AirPlay"),
                            subtitle: Text("Not Connected"),
                          ),
                        ),
                      ),
                      10.ph,
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Other Devices",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
            );
          },
          child: Icon(Icons.cast),
        ),
        title: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ReadySubscriptionPage()));
          },
          child: GoPremium(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage()));
              },
              child: Icon(Icons.settings),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boxes(
                  title: "Browser",
                  description: "Cast from websites",
                  imagePath: "img.png",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BrowserPage()));
                  },
                ),
                Boxes(
                  title: "Media",
                  description: "Cast photos & videos",
                  imagePath: "img_1.png",
                  onTap: () {
                    _openImagePicker();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MediaPage()));
                  },
                ),
              ],
            ),
            20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boxes(
                  title: "IPTV",
                  description: "Watch TV channels",
                  imagePath: "img_2.png",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IPTVPage()));
                  },
                ),
                Boxes(
                  title: "Youtube",
                  description: "Watch Youtube",
                  imagePath: "img_3.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.youtube.com/");
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Boxes(
                  title: "Google Drive",
                  description: "Cast files",
                  imagePath: "img_4.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://drive.google.com/drive/u/0/my-drive");
                    if(await launcher.launchUrl(uri)){
                    }else{
                    print("Could't Open this URl");
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleDrivePage()));
                  },
                ),
                Boxes(
                  title: "Google Photos",
                  description: "Cast media",
                  imagePath: "img_5.png",
                  onTap: ()async{
                    Uri uri = Uri.parse("https://www.google.com/photos/");
                    if(await launcher.launchUrl(uri)){
                    }else{
                    print("Could't Open this URl");
                    }
                  },
                ),
              ],
            ),
            20.ph,
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardWhiteBoardPage()));
              },
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: ListTile(
                    title: const Text(
                      "WhiteBoard",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text("Express yourself",style: TextStyle(fontSize: 16),),
                    trailing: Image.asset("assets/images/img_1.png",height: 50,width: 50,),
                  ),
                ),
              ),
          ),
            ),
            20.ph,
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MirrorPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.buttonButton,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        "Screen mirroring",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      subtitle: Text("Mirror your screen to TV",style: TextStyle(fontSize: 15,color: AppColor.whiteColor),),
                      trailing: Image.asset("assets/images/img_3.png",height: 50,width: 50,),
                    ),
                  ),
                ),
              ),
            ),
            10.ph,
            Text("Need Help?",style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }

  Container GoPremium() {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 0,
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/img.png",height: 30,width: 30,),
          10.pw,
          Text("Go Premium"),
        ],
      ),
      );
  }
  Future<void> _openImagePicker() async {
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      // Process the selected image (e.g., display it in your app)
      print('Selected image path: ${image.path}');
    } else {
      // No image was selected
    }
  }
}

