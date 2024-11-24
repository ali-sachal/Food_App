import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';

popularRecipes(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      /// Title
      Row(
        children: [
          Text(
            "Popular Recipes",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(height: 10.h),

      /// Horizontal Recipe List
      SizedBox(
        height: 250.h,
        child: AnimationLimiter(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Container(
                      width: 150.w, // Adjust width to be responsive
                      padding: EdgeInsets.all(12.r),
                      margin: EdgeInsets.only(
                        top: 10.h,
                        bottom: 10.h,
                        right: 15.w,
                        left: 5.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Top Row with Icon Buttons and Image
                          Row(
                            children: [
                              Column(
                                children: [
                                  iconButton(
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: whiteColor,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  iconButton(
                                    child: Image.asset(
                                      Images.fav1,
                                      scale: 2.5,
                                      color: whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Image.asset(
                                Images.eggPasta,
                                height: 80.h, // Adjust height responsively
                                width: 80.w,
                              ),
                            ],
                          ),

                          /// Recipe Name and Share Button
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Egg Pasta',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              iconButtonBorder(
                                child: Image.asset(
                                  Images.shareIcon,
                                  scale: 3.5,
                                  color: PrimaryColor,
                                ),
                              ),
                            ],
                          ),

                          /// Order Button
                          SizedBox(height: 8.h),
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: boxDecorationButton,
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),

      /// Search and Filters
      SizedBox(height: 20.h),
      Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: gradient1.withOpacity(0.70),
                prefixIcon: const Icon(
                  Icons.search,
                  color: whiteColor,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: whiteColor,
                  fontSize: 14.sp,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          filterButton(Images.filter),
          SizedBox(width: 6.w),
          filterButton(Images.robot),
        ],
      ),
    ],
  );
}

/// Icon Button with Circle Background
iconButton({required Widget child}) {
  return Container(
    padding: EdgeInsets.all(5.r),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: PrimaryColor,
      boxShadow: [boxShadowOutide],
    ),
    child: child,
  );
}

/// Icon Button with Circle Border
iconButtonBorder({required Widget child}) {
  return Container(
    padding: EdgeInsets.all(5.r),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 2.0, color: PrimaryColor),
      color: whiteColor,
      boxShadow: [boxShadowOutide],
    ),
    child: child,
  );
}

/// Filter Button Widget
Widget filterButton(String imagePath) {
  return Container(
    padding: EdgeInsets.all(4.5),
    decoration: BoxDecoration(
      color: whiteColor,
      border: Border.all(color: PrimaryColor, width: 2),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [boxShadowOutide, boxShadow],
    ),
    child: Image.asset(
      imagePath,
      scale: 2.5,
    ),
  );
}
