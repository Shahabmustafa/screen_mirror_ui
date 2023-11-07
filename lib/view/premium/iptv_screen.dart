

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/premium/shownavigator_iptv.dart';

import '../../component/widgets/custom_text_field.dart';

class IPTVPage extends StatefulWidget {
  const IPTVPage({Key? key}) : super(key: key);

  @override
  State<IPTVPage> createState() => _IPTVPageState();
}

class _IPTVPageState extends State<IPTVPage> {
  List<String> title = [
    "Animation",
    "Auto",
    "Business",
    "Class",
    "Comedy",
    "Culture",
    "Documentary",
    "Education",
  ];

  List<String> Spiling = [
    "A",
    "A",
    "B",
    "C",
    "C",
    "C",
    "D",
    "E",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IPTV"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                showCupertinoModalPopup(
                  context: context,
                  builder: (context){
                    return CupertinoActionSheet(
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: Text('Add M3U URL'),
                          onPressed: () {
                            // Perform an action when Option 1 is selected.
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text('Open Stream URL'),
                          onPressed: () {
                            // Perform an action when Option 2 is selected.
                            Navigator.pop(context);
                          },
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: Text('Cancel'),
                        onPressed: () {
                          // Close the sheet when Cancel is pressed.
                          Navigator.pop(context);
                        },
                      ),);
                  },
                );
              },
              child: Icon(Icons.add,size: 30,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomTextField(),
            20.ph,
            const Row(
              children: [
                Text(
                  "Recommended IPTVs",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,index){
                  return Card(
                    elevation: 0.1,
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFf5c344),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                              Spiling[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                      ),
                      title: Text(title[index]),
                      subtitle: Text("26 Channel"),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ShowNavigatorIPTV()));
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
