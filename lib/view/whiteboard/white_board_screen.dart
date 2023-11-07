import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/whiteboard/white_board_file.dart';

import '../../component/widgets/custom_text_field.dart';

class WhiteBoardPage extends StatefulWidget {
  const WhiteBoardPage({Key? key}) : super(key: key);

  @override
  State<WhiteBoardPage> createState() => _WhiteBoardPageState();
}

class _WhiteBoardPageState extends State<WhiteBoardPage> {
  bool boxes = false;
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
      body: boxes == true ?
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/img_1.png",color: Colors.black,),
          30.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
                "All your boards will be stored here.You can edit, rename or delete them atany time.",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w200
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ) :
      GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 3,
          ),
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ],
            );
          }
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

