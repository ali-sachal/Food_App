import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/screens/home_screen/home_view_model.dart';

homeAppBar(BuildContext context, HomeViewModel model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          GestureDetector(
            onTap: () {
              showProfilePopup(context);
            },
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: PrimaryColor,
              child: CircleAvatar(
                radius: 25.sp,
                backgroundImage: AssetImage(
                  Images.homeIcon,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(4.5),
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(color: PrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.r,
                  spreadRadius: 4,
                  offset: Offset(0, 4.w),
                ),
              ],
            ),
            child: Image.asset(
              Images.homeScan,
              scale: 4,
            ),
          ),
          SizedBox(width: 5.w),
          GestureDetector(
            onTap: () {
              menuButton(context, model);
            },
            child: Image.asset(
              Images.homeMenu,
              scale: 5,
            ),
          ),
        ],
      ),
      const SizedBox(height: 15),
      Text(
        "Hey Designer",
        style: const TextStyle().s(22).w(6).cl(PrimaryColor),
      ),
      const SizedBox(height: 5),
      Text(
        "What do you like to find?",
        style: const TextStyle().s(14).w(4),
      ),
      const SizedBox(height: 25),
    ],
  );
}

void showProfilePopup(BuildContext context) {
  showMenu<String>(
    context: context,
    position: RelativeRect.fromSize(
      const Rect.fromLTRB(35.0, 100, 0, 0),
      Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
    ),
    color: whiteColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: PrimaryColor, width: 2.0),
    ),
    items: [
      PopupMenuItem<String>(
        value: 'Profile',
        child: SizedBox(
          width: 140.w,
          // padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Profile',
            style: style16B.copyWith(color: PrimaryColor),
          ),
        ),
        onTap: () {
          // Navigate to Profile screen or perform profile action
        },
      ),
      PopupMenuItem(
        height: 2.0,
        enabled: false,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xff777777).withOpacity(0.10), width: 2)),
        ),
      ),
      PopupMenuItem<String>(
        value: 'Logout',
        child: SizedBox(
          width: 140.w,
          // padding: const EdgeInsets.only(bottom: 25),
          child: Text(
            'Logout',
            style: style16B.copyWith(color: PrimaryColor),
          ),
        ),
        onTap: () {
          // Perform logout action
        },
      ),
    ],
    elevation: 8.0,
  );
}

void menuButton(BuildContext context, HomeViewModel model) {
  showMenu<String>(
    context: context,
    position: RelativeRect.fromSize(
      const Rect.fromLTRB(100.0, 100, 0.0, 0),
      Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
    ),
    color: whiteColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: PrimaryColor, width: 2.0),
    ),
    items: [
      PopupMenuItem<String>(
        value: 'Real Time Responses and Integration by AI',
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: model.selectedValue ==
                          'Real Time Responses and Integration by AI'
                      ? whiteColor
                      : whiteColor,
                  borderRadius: BorderRadius.circular(30.r),
                  gradient: boxLinearGradeintRight,
                  boxShadow: [
                    BoxShadow(
                        color: blackColor.withOpacity(0.25),
                        offset: const Offset(0.0, 4),
                        blurRadius: 4.0,
                        spreadRadius: 0.0)
                  ]),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                enabledBorder: InputBorder.none,
                hintStyle:
                    GoogleFonts.dmSans(fontSize: 14.sp, color: whiteColor),
                prefixIcon: Icon(Icons.search),
              )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Real Time Responses and Integration by AI',
              style: style12B.copyWith(color: PrimaryColor),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
        onTap: () {
          model.onClick("Real Time Responses and Integration by AI");
        },
      ),
      PopupMenuItem(
        height: 2.0,
        enabled: false,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xff777777).withOpacity(0.10), width: 2)),
        ),
      ),
      PopupMenuItem<String>(
        value: 'Customized Workout Program',
        child: Text(
          'Customized Workout Program',
          style: style12B.copyWith(color: PrimaryColor),
        ),
        onTap: () {
          // Perform logout action
        },
      ),
      PopupMenuItem(
        height: 2.0,
        enabled: false,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xff777777).withOpacity(0.10), width: 2)),
        ),
      ),
      PopupMenuItem<String>(
        value: 'Shopping List',
        child: Text(
          'Shopping List',
          style: style12B.copyWith(color: PrimaryColor),
        ),
        onTap: () {
          // Perform logout action
        },
      ),
      PopupMenuItem(
        height: 2.0,
        enabled: false,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xff777777).withOpacity(0.10), width: 2)),
        ),
      ),
      PopupMenuItem<String>(
        value: 'My Inventory',
        child: Text(
          'My Inventory',
          style: style12B.copyWith(color: PrimaryColor),
        ),
        onTap: () {
          // Perform logout action
        },
      ),
      PopupMenuItem(
        height: 2.0,
        enabled: false,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xff777777).withOpacity(0.10), width: 2)),
        ),
      ),
      PopupMenuItem<String>(
        value: 'Integration with Health Sensors',
        child: Text(
          'Integration with Health Sensors',
          style: style12B.copyWith(color: PrimaryColor),
        ),
        onTap: () {
          // Perform logout action
        },
      ),
    ],
    elevation: 8.0,
  );
}
