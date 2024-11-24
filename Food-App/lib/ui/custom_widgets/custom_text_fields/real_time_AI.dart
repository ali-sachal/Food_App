import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

realTimeAIresponse(context) {
  return Column(
    children: [
      Center(
        child: Text(
          "Real Time Responses and Integration by AI",
          textAlign: TextAlign.center,
          style: style16B,
        ),
      ),
      SizedBox(
        height: 20.h,
      ),

      ///
      /// Text Field for Search
      ///
      Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            gradient: boxLinearGradeintRight,
            // color: whiteColor,
            boxShadow: [boxShadow, boxShadowOutide],
            borderRadius: BorderRadius.circular(40.r)),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: gradient1.withOpacity(0.70),
            prefixIcon: Image.asset(
              Images.robot,
              scale: 3.5,
            ),
            suffixIcon: const Icon(
              Icons.more_horiz,
              color: whiteColor,
            ),
            hintText: '',
            hintStyle: const TextStyle(color: whiteColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40.0.r)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 30.h,
      ),

      ///
      /// Chatting with AI
      ///
      Container(
        height: 370,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AiBoxColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: PrimaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Recipe",
                        textAlign: TextAlign.right,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(
                        Images.homeIcon,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(
                        Images.robot,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      decoration: BoxDecoration(
                          boxShadow: [boxShadow, boxShadowOutide],
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                          "What kind of recipe are you looking for? Would you like a recipe for a specific dish, cuisine, or dietary preference (e.g. vegetarian, gluten-free)? Or are you open to suggestions? Let me know and I'll do my best to assist you!"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),

            ///
            ///   Text Field for Message
            ///
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  gradient: boxLinearGradeintRight,
                  // color: whiteColor,
                  boxShadow: [boxShadow, boxShadowOutide],
                  borderRadius: BorderRadius.circular(40.r)),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: gradient1.withOpacity(0.70),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: whiteColor,
                      child: Icon(
                        Icons.arrow_upward,
                        color: PrimaryColor,
                      ),
                    ),
                  ),
                  hintText: 'Message.....',
                  hintStyle: const TextStyle(color: whiteColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0.r)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
    ],
  );
}
