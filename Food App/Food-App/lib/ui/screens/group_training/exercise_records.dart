import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

class ExerciseRecords extends StatelessWidget {
  const ExerciseRecords({super.key});

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
              child: Image.asset("assets/images/sqaut.png"),
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
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 90),
          height: 100,
          width: MediaQuery.sizeOf(context).width * 0.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(Images.exercise), fit: BoxFit.cover)),
          child: Column(
            children: [
              Text(
                "Look at your records and Improvements.",
                style: style16B.copyWith(
                  color: whiteColor,
                ),
              ),
              Text(
                "Exercise Records",
                style: style16B.copyWith(
                  color: PrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

_appBar() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: PrimaryColor),
    child: Column(
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
