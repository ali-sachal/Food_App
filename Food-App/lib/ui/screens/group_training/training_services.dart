import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/screens/group_training/training_services_detail.dart';

class TrainingServicesScreen extends StatelessWidget {
  const TrainingServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topHeader(context),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: authFieldDecoration.copyWith(
                    prefixIcon: Icon(
                      Icons.search,
                      color: blackColor,
                    ),
                    hintText: "Search Different Exercises...",
                    hintStyle: style14N.copyWith(color: greyColor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PrimaryColor,
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Services By",
                          style: style14B,
                        ),
                        showAll(onPressed: () {}, text: "Show All")
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 37.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor,
                          ),
                          width: 114.w,
                          child: Text(
                            "All",
                            style: style14B,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 37.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: PrimaryColor,
                          ),
                          width: 114.w,
                          child: Text(
                            "Popular",
                            style: style14B.copyWith(color: whiteColor),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 37.h,
                          width: 114.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor,
                          ),
                          child: Text(
                            "Weight loss",
                            style: style14B,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 130.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                alignment: Alignment.center,
                                height: 111.h,
                                width: 112.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/dumble.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Triceps",
                                      style: style14B.copyWith(
                                          color: PrimaryColor),
                                    ),
                                    Text(
                                      "13 Services",
                                      style:
                                          style14B.copyWith(color: whiteColor),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TrainingServicesDetailScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Group 1261155322.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_topHeader(context) {
  return Stack(
    children: [
      _appBar(),
      Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 90),
          height: 200,
          width: MediaQuery.sizeOf(context).width * 0.95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(Images.exercise), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Look at your records and Improvements.",
                style: style16B.copyWith(
                    color: whiteColor, fontWeight: FontWeight.bold),
              ),
              Text(
                "Search\nServices",
                style: style16B.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  "Search Services",
                  style: style16B.copyWith(
                      color: whiteColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

_appBar() {
  return Container(
    height: 200,
    width: double.infinity,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: PrimaryColor),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  Images.homeIcon,
                  height: 40,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Clara!",
                      style: TextStyle().w(6).s(13),
                    ),
                    Text(
                      "Enjoy Amazing Recipes...",
                      style: TextStyle().w(6).s(13),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  Images.homeScan,
                  scale: 3,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  Images.homeMenu,
                  scale: 5,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    ),
  );
}
