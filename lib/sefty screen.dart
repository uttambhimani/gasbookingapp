import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Sefty_Screen extends StatefulWidget {
  const Sefty_Screen({Key? key}) : super(key: key);

  @override
  State<Sefty_Screen> createState() => _Sefty_ScreenState();
}

class _Sefty_ScreenState extends State<Sefty_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Safety Tips"),
          backgroundColor: Colors.red.shade900,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(" => \t Gas cylinder is the most commonly used source for cooking food in homes in India.",style: TextStyle(fontSize: 20),),
                SizedBox(height: 5.h,),
                Text(" => \tAlways use LPG cylinders, which have ISI mark on them.",style: TextStyle(fontSize: 20),),
                SizedBox(height: 5.h,),
                Text(" => \t Make sure you buy the gas cylinders from genuine dealers. Do not buy them from black market.",style: TextStyle(fontSize: 20),),
                SizedBox(height: 5.h,),
                Text(" => \t While accepting the gas cylinder at the time of its delivery, make sure to check that the cylinder is sealed properly and its safety cap is not tampered,"
                    " which can otherwise cause the leakage of LPG that might cause dreadful explosion.",style: TextStyle(fontSize: 20),),
                SizedBox(height: 5.h,),

                Text(" => \tAlways turn off the knob on the gas cylinder, after use, to prevent any accidental leakage.",style: TextStyle(fontSize: 20),),
                SizedBox(height: 5.h,),

                Text(" => \tClose all the stove knobs after use and also if you smell a leak.",style: TextStyle(fontSize: 20),), Text(" => \tInstall gas detectors in your kitchen and in the room where you keep your gas cylinder in order to avoid any accidents due to gas leak from a gas cylinder.",style: TextStyle(fontSize: 20),),
                SizedBox(height: 5.h,),

                InkWell(
                  onTap: (){
                  Get.toNamed('hm');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 7.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                      color: Colors.red.shade900,
                    ),
                    child: Text(
                      "Done",
                      style: GoogleFonts.roboto(fontSize: 3.h, color: Colors.white),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
