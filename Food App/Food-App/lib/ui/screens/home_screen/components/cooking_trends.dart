import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

cookingTrends(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Center(
        child: Text(
          "Cooking Trends and Inspiration Feed",
          style: style16B,
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
      Text(
        "Cooking Trends",
        style: style16B.copyWith(color: PrimaryColor),
      ),
      SizedBox(
        height: 20.h,
      ),
      Container(
        height: 220.h,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20),
                  child: Container(
                    width: 170.w,
                    padding: const EdgeInsets.all(20),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: PrimaryColor,
                      boxShadow: [boxShadowOutide],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Egg Pasta",
                              style: style14N,
                            ),
                            Text(
                              "\$40",
                              style: style14N,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomButton(text: "Order Now", onPressed: () {})
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage(Images.imagecooking),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 15.w,
            );
          },
        ),
      ),
    ],
  );
}
