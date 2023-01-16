import 'package:flutter/material.dart';
import 'package:gasbookingapp/HomeController.dart';
import 'package:gasbookingapp/model_class.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'ads_screen/ads_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

HomeController homeController = Get.put(HomeController());

class _Home_ScreenState extends State<Home_Screen> {
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
          centerTitle: true,
          title: Text("Online Gas Booking"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 30.h,
                width: double.infinity.w,
                color: Colors.grey,
                child: Image.asset(
                  "assets/images/d.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: (){
                  Get.toNamed('sf');
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(Icons.notification_important_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Safety Tips",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: ()async{
                  String link= await"https://my.ebharatgas.com/bharatgas/LPGServices/index";
                  Uri url =Uri.parse(link);
                  launchUrl(url);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(Icons.gas_meter_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "More Information Bharat Gas",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: ()async{
                  String link= await"https://myhpgas.in/myhpgas/hpgas/lpgservices.aspx";
                  Uri url =Uri.parse(link);
                  launchUrl(url);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(Icons.gas_meter_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "More Information HP Gas",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: ()async{
                  String link= await"https://iocl.com/pages/indane-cooking-gas-overview";
                  Uri url =Uri.parse(link);
                  launchUrl(url);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(Icons.gas_meter_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "More Information Indian Gas",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () async {
                  String data = "Testing Share Pakage";
                  await Share.share("$data");
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Icon(Icons.share),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Share APP",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                height: 1,
              )),
              Text("Version"),
              Text("1.2.10"),
            ],
          ),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 25.h,
              width: 100.w,
              child: Image.asset("assets/images/gas.jpg"),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text("BOOK YOUR LPG GAS", style: GoogleFonts.bowlbyOne()),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeController.gaslist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        InkWell(
                          onTap: () {
                            if (index == 0) {
                              homeController.clickdata =
                                  homeController.bharatstets.value;
                            }
                            if (index == 1) {
                              homeController.clickdata =
                                  homeController.statehp.value;
                            }
                            if (index == 2) {
                              homeController.clickdata =
                                  homeController.indianstets.value;
                            }

                            Get.toNamed('st');
                          },
                          child: Container(
                            margin: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.w),
                              border: Border.all(color: Colors.black),
                            ),
                            height: 20.h,
                            width: 28.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 15.h,
                                  width: 50.w,
                                  child: Image.asset(
                                      "${homeController.gaslist[index].gasimages}"),
                                ),
                                Text(
                                  "${homeController.gaslist[index].gasname}",
                                  style: GoogleFonts.roboto(fontSize: 2.h),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 50,
                        //   width: double.infinity,
                        //   child: AdWidget(ad: bannerAd!),
                        // ),
                      ],
                    );
                  }),
            ),
            InkWell(
              onTap: (){

                Get.toNamed('sf');

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
                  "Safety Tips",
                  style: GoogleFonts.roboto(fontSize: 3.h, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
