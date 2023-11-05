import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({Key? key}) : super(key: key);

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  String Category = "Screenshots";

  List<String> typeOfCategory = [
    "Recent",
    "Favorites",
    "Videos",
    "Selfie",
    "Time-lapse",
    "Slo-mo",
    "Screenshots",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        actions: [
          Icon(Icons.cast,size: 30,),
          10.pw
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: typeOfCategory.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Category = typeOfCategory[index];
                    setState(() {

                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Category == typeOfCategory[index].toString() ?
                          AppColor.buttonButton :
                          Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            typeOfCategory[index].toString(),
                            style: TextStyle(
                              color: Category == typeOfCategory[index].toString() ?
                                  AppColor.whiteColor :
                                  Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          30.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/media/img.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_1.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_2.png",height: 130,width: 130,),
            ],
          ),
          10.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/media/img_3.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_4.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_5.png",height: 130,width: 130,),
            ],
          ),
          10.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/media/img.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_1.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_2.png",height: 130,width: 130,),
            ],
          ),
          10.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/media/img_3.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_4.png",height: 130,width: 130,),
              Image.asset("assets/images/media/img_5.png",height: 130,width: 130,),
            ],
          ),
        ],
      ),
    );
  }
}


