import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:gasbookingapp/home_screen.dart';
import 'package:gasbookingapp/model_class.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

import 'ads_screen/ads_screen.dart';

class Stetes_screen extends StatefulWidget {
  const Stetes_screen({Key? key}) : super(key: key);

  @override
  State<Stetes_screen> createState() => _Stetes_screenState();
}

class _Stetes_screenState extends State<Stetes_screen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bannerAds();
    interAds();
    rewardAds();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Select Your State "),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: homeController.clickdata.length,
                  itemBuilder: (context, index) {

                    if(index%3==0)
                      {
                      return get();
                      }
                      return GestureDetector(
                        onTap: (){
                          homeController.cliknamber = homeController.clickdata[index].namber;

                          Get.toNamed('ct');
                        },
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(1.h),
                              height: 9.h,
                              width: 95.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${homeController.clickdata[index].stats}",style: GoogleFonts.roboto(fontSize: 20),),
                                  Text("${homeController.clickdata[index].namber}",style: GoogleFonts.roboto(fontSize: 15),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );


                  }),
            ),
          ],
        ),
      ),
    );
  }
  Widget get(){
      bannerAd = BannerAd(
          size: AdSize.mediumRectangle,
          adUnitId: "ca-app-pub-3940256099942544/6300978111",
          listener: BannerAdListener(),
          request: AdRequest());

      bannerAd!.load();
      return SizedBox(height: 50,child: AdWidget(ad: bannerAd!,),);
  }
}
