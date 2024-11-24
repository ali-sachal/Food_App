import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/cooking_trends.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/recipt_title.dart';

userGeneratedRecipes(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Suggested By AI",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryColor,
          suffixIcon: Icon(Icons.search),
          hintText: 'Message',
          hintStyle: TextStyle(color: Color(0xfff777777)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),

      gridView(context),
      SizedBox(
        height: 20,
      ),

      reciptTitle(context),

      EasyDateTimeLine(
        activeColor: PrimaryColor,
        initialDate: DateTime.now(),
        onDateChange: (selectedDate) {
          //`selectedDate` the new date selected.
        },
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Text(
          "Upcoming events",
          style: style16B,
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
      TextFormField(
        decoration: authFieldDecoration.copyWith(
          hintText: 'Search',
          hintStyle: style16N.copyWith(color: const Color(0xff777777)),
          prefixIcon: Icon(
            Icons.search,
            color: blackColor,
            size: 20.sp,
          ),
          suffixIcon: Image.asset(
            Images.robot,
            scale: 4,
          ),
        ),
      ),
      // upcoming  Events >>>
      upcomingEvents(),
      SizedBox(
        height: 20.h,
      ),
      // upcoming  Events >>>
      upcomingEvents(),
      SizedBox(
        height: 20.h,
      ),
      cookingTrends(context),
      SizedBox(
        height: 20.h,
      ),

      Text(
        "Inspiration Feed",
        style: style16B.copyWith(color: PrimaryColor),
      ),

      _inspirationFeed(),
      SizedBox(
        height: 20.h,
      ),
      Text(
        "Cooking Experts",
        style: style16B.copyWith(color: PrimaryColor),
      ),
    ],
  );
}

_inspirationFeed() {
  return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          height: 204.h,
          width: 187.w,
          decoration: BoxDecoration(
              color: PrimaryColor, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 106.h,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
                child: Image.asset(Images.foodTrackingBg),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Images.homeIcon),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Master Chef",
                          style: style12N,
                        ),
                        Text(
                          "Chicken skewers",
                          style: style12N,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}

upcomingEvents() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 20.h,
      ),
      Container(
        height: 420.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(
                image: AssetImage(Images.upcoming_events), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: whiteColor.withOpacity(0.40),
                        child: Image.asset(
                          Images.location,
                          scale: 4,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Event By China",
                        style: style14N.copyWith(color: whiteColor),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: whiteColor.withOpacity(0.40),
                    child: Image.asset(
                      Images.notification,
                      scale: 4,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.calender,
                        scale: 4.5,
                      ),
                      Text(
                        "Jan 02",
                        style: style14N.copyWith(color: whiteColor),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Images.time,
                            scale: 4.5,
                          ),
                          Text(
                            "4 am",
                            style: style14N.copyWith(color: whiteColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 240.h,
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
                            backgroundImage: AssetImage(Images.homeIcon),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Master Chef",
                            style: style12N,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took",
                        style: style12N,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: CustomButton(text: "Sign Up", onPressed: () {}),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

gridView(BuildContext context) {
  return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 180),
      itemBuilder: (context, index) {
        final item = items[index];
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: boxLinearGradeint,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Image.asset(
                item['image']!,
                height: 107,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 41,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                          blurRadius: 4)
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    color: progressColor),
                child: Center(
                  child: Text(
                    item["name"]!,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ))
          ],
        );
      });
}

final List<Map<String, String>> items = [
  {
    'name': 'Chicken Skewers',
    'image': "assets/images/chicken_skewer.png",
  },
  {
    'name': 'Potato Pancakes',
    'image': "assets/images/potato_pancakes.png",
  },
  {
    'name': 'Gourmet Sandwich',
    'image': "assets/images/gormat_sandwich.png",
  },
  {
    'name': 'Fresh Pasta',
    'image': "assets/images/fresh_past.png",
  },
  {
    'name': 'Freshi Testy Burger',
    'image': "assets/images/fresh_tasty_burger.png",
  },
  {
    'name': 'Indian Mutton Biryani',
    'image': "assets/images/indian_mutton_biryani.png",
  },
  {
    'name': 'Mexican Tacos',
    'image': "assets/images/maxicon_tacos.png",
  },
  {
    'name': 'Grilled Pork',
    'image': "assets/images/grilled_pork.png",
  },
];
