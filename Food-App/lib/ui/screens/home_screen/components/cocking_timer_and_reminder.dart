import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/screens/AIRecipeGenerator/AIRecipeGeneratorScreen.dart';
import 'package:security_gdpr/ui/screens/recipt_generating/recipt_generating.dart';

cockingTimer_and_Reminder(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Cooking Timer and Reminder",
            style: TextStyle().s(16).cl(Colors.black).w(6),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: PrimaryColor),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/icons/notify.png",
              width: 15,
              height: 18,
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "Cocking...",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Image.asset(
        "assets/images/dish_timer.png",
        width: 231,
        height: 231,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "13:12",
        style: TextStyle(
            color: progressColor, fontSize: 48, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        "Recipe Reviews and Ratings",
        style: TextStyle(color: blackColor, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      SizedBox(
        height: 450,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 20),
                  child: Container(
                    //width: 200.w,
                    width: 250,
                    padding: const EdgeInsets.all(20),
                    //height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xfffF8F8F8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          "Grilled Skirt Steak",
                          style: style16N,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Rate this Recipe",
                        ),
                        RatingBar.builder(
                          itemSize: 16,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Reviews",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.more_vert)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/m.png",
                              width: 32,
                              height: 32,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("M Rehan"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 10,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              "15/01/2024",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Simply dummy text of \nthe text printing and \ntypesetting industry",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  suffix: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: progressColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.all(8),
                                  hintText: "Add Review",
                                  hintStyle: TextStyle(fontSize: 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white)))),
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/grilled_steak.png",
                  width: 155,
                  height: 155,
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 5.w,
            );
          },
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        "Recipe Generator",
        style: TextStyle(color: blackColor, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 320,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReciptGenerating()));
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Container(
                      width: 250,
                      padding: const EdgeInsets.all(20),
                      //height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xfffF8F8F8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Grilled Skirt Steak",
                                style: style14N,
                              ),
                              Text("\$40")
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Simply dummy text of \nthe text printing and \ntypesetting industry",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: progressColor),
                                  child: Center(
                                      child: Text(
                                    "Generate Food Recipes",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white),
                                  )),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: progressColor),
                                  child: Center(
                                      child: Text(
                                    "Generate Food Recipes",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/grilled_steak.png",
                    width: 155,
                    height: 155,
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 5.w,
            );
          },
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        "AI GENERATE Recipes",
        style: style16B,
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AIRecipeGeneratorScreen()));
        },
        child: Image.asset(
          Images.AI_RECIP,
          scale: 6,
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
