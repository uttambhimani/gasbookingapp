import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({Key? key}) : super(key: key);

  @override
  State<Splesh_Screen> createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {

  @override
  void initState() {
   // openAds();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // if (appOpenAd != null) {
    //   print("================================================ ");
    //   appOpenAd!.show();
    // } else {
    //   print("================================================ >>>> ");
    // }
  }

  List img=["assets/icons/spimg.png"];

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      // if (appOpenAd != null) {
      //   print("================================================ ");
      //   appOpenAd!.show();
      // }
      Get.toNamed('hm');
    }
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 732,
                  width: 500,
                  child: Image.asset("assets/images/sk.gif",fit: BoxFit.fitWidth,),
                ),
              ),
              Text("Version"),
              Text("1.2.10"),
              SizedBox(height: 2.h,)
            ],
          ),
        ),
      ),
    );
  }
}
