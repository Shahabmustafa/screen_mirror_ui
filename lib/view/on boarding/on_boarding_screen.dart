import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_mirror/utils/color_app.dart';
import 'package:screen_mirror/utils/utils.dart';
import 'package:screen_mirror/view/home_screen.dart';
import '../../model/on_boarding_model.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController _controller;
  bool button = false;
  bool buttonOne = false;
  bool buttonTwo = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: contents.length,
              itemBuilder: (context,index){
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        50.ph,
                        Image.asset(contents[index].imageURL.toString()),
                        50.ph,
                        Column(
                          children: [
                            Text(
                              contents[index].title.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            20.ph,
                            contents[index].extraButton == null ?
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                contents[index].Description.toString(),
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ) :
                            Column(
                              children: [
                                TextIcon(
                                  title: "Home",
                                  icon: CupertinoIcons.home,
                                  color: AppColor.buttonButton,
                                ),
                                TextIcon(
                                  title: "Office",
                                  icon: CupertinoIcons.building_2_fill,
                                  color: AppColor.buttonButton,
                                ),
                                TextIcon(
                                  title: "Both",
                                  icon: CupertinoIcons.house_alt,
                                  color: AppColor.buttonButton,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.buttonButton,
              ),
              gradient: currentIndex == contents.length -1 ?
              const LinearGradient(
                begin: Alignment.center,
                end: Alignment.center,
                  colors: [
                    AppColor.buttonButton,
                    AppColor.whiteColor,
                    AppColor.whiteColor,
                  ],
              ) :
              const LinearGradient(
                colors: [
                  AppColor.buttonButton,
                  AppColor.buttonButton,
                ],
              ),
              color: AppColor.buttonButton,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              highlightColor: Colors.transparent,
              onTap: (){
                if(currentIndex == contents.length -1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }
                _controller.nextPage(
                  duration: Duration(microseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              child: Center(
                  child: Text(currentIndex == contents.length -1 ? "30%" : "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
              ),
            ),
          ),
          20.ph,
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                        (index) => buildDots(index,context),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDots(int index,BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:currentIndex == index ? AppColor.buttonButton : Colors.grey.shade200,
      ),
    );
  }
}

class TextIcon extends StatelessWidget {
  TextIcon({Key? key,required this.title,required this.icon,this.color}) : super(key: key);
  String title;
  IconData icon;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
        ),
        child: ListTile(
          leading: Icon(icon,color: AppColor.whiteColor,),
          title: Text(title,style: TextStyle(color: AppColor.whiteColor),),
          trailing: Checkbox(
            value: true,
            onChanged: (value){

            },
          )
        ),
      ),
    );
  }
}

