import 'package:flutter/cupertino.dart';
import 'package:gasbookingapp/call_screen.dart';
import 'package:gasbookingapp/home_screen.dart';
import 'package:gasbookingapp/sefty%20screen.dart';
import 'package:gasbookingapp/splesh_screen.dart';
import 'package:gasbookingapp/stets.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'sf',
          routes: {
            '/': (context) => Splesh_Screen(),
            'hm': (context) => Home_Screen(),
            'st': (context) => Stetes_screen(),
            'ct': (context) => Call_screen(),
            'sf':(context)=>Sefty_Screen(),
          });
    },
  ));
}
