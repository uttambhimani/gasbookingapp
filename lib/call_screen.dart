import 'package:flutter/material.dart';
import 'package:gasbookingapp/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Call_screen extends StatefulWidget {
  const Call_screen({Key? key}) : super(key: key);

  @override
  State<Call_screen> createState() => _Call_screenState();
}

class _Call_screenState extends State<Call_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Call"),backgroundColor: Colors.red.shade900,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      String namber="tel:${homeController.cliknamber}";
                      launchUrl(Uri.parse(namber));
                    },
                    child: Container(
                      height: 18.h,
                      width: 50.w,
                      color: Colors.white,
                      child: Image.asset("assets/images/call.jpg"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      String sms="sms:${homeController.cliknamber}";
                      launchUrl(Uri.parse(sms));
                    },
                    child: Container(
                      height: 18.h,
                      width: 50.w,
                      color: Colors.white,
                      child: Image.asset("assets/images/sms.jpg"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Call",style:GoogleFonts.bowlbyOne(fontSize: 2.7.h),),
                  Text("SMS",style:GoogleFonts.bowlbyOne(fontSize: 2.7.h),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
