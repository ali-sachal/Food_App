import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';

import '../../../core/constant/images.dart';
import '../climate_impact/climate_impact.dart';
import '../health_predictor/health_predictor.dart';
import '../health_predictor/widget/health_diet_widget.dart';
import '../mood_food/mood_food.dart';
import 'envionmental_imapct_scoring_details.dart';

class EnvironmentalImpact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Images.eggImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Images.homeIcon,
                          height: 40,
                        ),
                        Text(
                          "Scan Product",
                          style: TextStyle(color: whiteColor).s(20).w(6),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4.5),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                border:
                                    Border.all(color: PrimaryColor, width: 2),
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
                            const SizedBox(width: 5),
                            Image.asset(
                              Images.homeMenu,
                              height: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              bottomContainer(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: 123,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                quantityContainer(),
                SizedBox(
                  height: 15.h,
                ),
                carbonFootprint(context),
                SizedBox(
                  height: 15.h,
                ),
                carbonFootprint(context),
                SizedBox(
                  height: 15.h,
                ),
                comparePrice(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget quantityContainer() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Eggs",
                        style: TextStyle(color: blackColor).s(30).w(6),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "(Quantity 6)",
                        style: TextStyle(color: gradient1).s(16).w(6),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Food Product",
                        style: TextStyle(color: Color(0xFF454545))
                            .s(18)
                            .w(6), // Ensure color format is correct
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Right side: Image
            Image.asset(
              Images.brownImage,
              height: 96,
              width: 126,
            ),
          ],
        ),
        // Second Row for Food Product
      ],
    );
  }

  Widget carbonFootprint(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ClimateImpact(), // Navigate to the ClimateImpact page
          ),
        );
      },
      child: Container(
        height: 85.h, // Fixed height
        width: 390, // Fixed width
        decoration: BoxDecoration(
            color: gradient1, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft, // Adjust alignment as needed
                child: Text(
                  "Carbon Footprint",
                  style: TextStyle(color: Colors.white).s(18).w(6),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Align at the start
                  children: [
                    Image.asset(
                      Images.forwardIcon,
                      height: 14,
                      width: 14,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "6 Small Eggs (300g) is equivalent to 1.59kg Carbon \nDioxide (CO2) emissions.",
                        style: TextStyle(color: blackColor).s(12).w(6),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget comparePrice(context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Container(
              width: 145,
              height: 35,
              decoration: BoxDecoration(
                color: primaryColorWithOpacity,
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Compare Price",
                  style: TextStyle(
                    color: Colors.white,
                  ).s(12).w(6),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 193,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: primaryColorWithOpacity,
                    width: 2.0,
                  ) // Border radius
                  ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Show more Eco-Friendly Details",
                  style: TextStyle(
                    color: gradient2,
                  ).s(10).w(6),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular Recipes",
              style: TextStyle(
                color: primaryColorWithOpacity,
              ).s(15),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: gradient1, borderRadius: BorderRadius.circular(5)),
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HealthPredictor()));
                  },
                  child: Text("Show All",
                      style: TextStyle(
                        color: blackColor,
                      ).s(12).w(6)),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Images.chickenSkewers,
                height: 90,
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Pancake",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Ingredients: Milk, Flour, Butter,\n Eggs, Sugar, and Salt.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF777777)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "4.2",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: blackColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => DonateToCharity()));
              //   },
              //   child: Text('Add to\nDonation',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //           fontSize: 10,
              //           fontWeight: FontWeight.w600,
              //           color: Colors.black)),
              // ),
              // SizedBox(width: 6),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Most Scanned Product",
              style: TextStyle(
                color: primaryColorWithOpacity,
              ).s(15),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: gradient1, borderRadius: BorderRadius.circular(5)),
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DietHealthView()));
                  },
                  child: Text("Show All",
                      style: TextStyle(
                        color: blackColor,
                      ).s(12).w(6)),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          child: AnimationLimiter(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final item = items[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FoodMoodView(), // Navigate to the ClimateImpact page
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(
                              top: 5, bottom: 10, right: 5, left: 5),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                item['image']!,
                                height: 90,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        item['name']!,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          "Quantity:",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: primaryColorWithOpacity),
                                        ),
                                        Text(
                                          "0.4",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0XFF777777)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "4.2",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: blackColor),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EnvionmentalImapctScoringDetails()));
                                },
                                child: Text('Show\nDetails',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: primaryColorWithOpacity)),
                              ),
                              SizedBox(width: 6),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class DonationItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              Images.donate1,
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pytt i Panna',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_sharp,
                          color: PrimaryColor,
                          size: 18,
                        ),
                        Text('45 Minutes  ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            )),
                        Text(' Easy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> items = [
  {
    'name': 'Meat',
    'image': Images.meat,
  },
  {
    'name': 'Potato',
    'image': Images.potato,
  },
];
