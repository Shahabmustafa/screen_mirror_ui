

import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';

import '../../component/widgets/google_sign_button.dart';
import 'google_drive_image.dart';

class GoogleDrivePage extends StatefulWidget {
  const GoogleDrivePage({Key? key}) : super(key: key);

  @override
  State<GoogleDrivePage> createState() => _GoogleDrivePageState();
}

class _GoogleDrivePageState extends State<GoogleDrivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Drive",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
        actions: [
          Icon(Icons.more_horiz,size: 30,),
          20.pw,
          Icon(Icons.cast,size: 30,),
          10.pw
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/social/img_1.png")),
            20.ph,
            Text(
              "Sign in with Google to continue. All your data is securely protected."
              ,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
              textAlign: TextAlign.center,
            ),
            20.ph,
            const Text(
              "Currently you can only view your photos and videos located on Google Drive",
              style: TextStyle(
              fontSize: 20,
            ),
              textAlign: TextAlign.center,
            ),
            20.ph,
            GoogleSignInButton(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleDriveImage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
