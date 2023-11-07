import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/whiteboard/white_board_file.dart';

class WhiteBoardPage extends StatefulWidget {
  const WhiteBoardPage({Key? key}) : super(key: key);

  @override
  State<WhiteBoardPage> createState() => _WhiteBoardPageState();
}

class _WhiteBoardPageState extends State<WhiteBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whiteboard"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                _showAlertDialog(context);
              },
              child: Icon(
                  Icons.add,
                  size: 30,
                ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/img_1.png",color: Colors.black,),
          30.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
                "All your boards will be stored here.You can edit, rename or delete them at any time.",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w200
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
  void _showAlertDialog(BuildContext context) {
    // Show an alert dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Create new board'),
          content: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CupertinoTextField(
              placeholder: "New board",
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WhiteBoardFile()));
              },
              child: Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}

