import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';
import '../recommendations/recommendation.dart';

class FoodMoodView extends StatefulWidget {
  const FoodMoodView({super.key});

  @override
  _ClimateImpactState createState() => _ClimateImpactState();
}

class _ClimateImpactState extends State<FoodMoodView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    final imageHeightPercentage = 380 / screenHeight;
    final containerTopPercentage = 320 / screenHeight;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset(
                      Images.bgFoodImage,
                      width: screenWidth,
                      height: screenHeight * imageHeightPercentage,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 70, // Position from the bottom
                      left: 20,
                      child: Text(
                        'Emotional Eating \nDetector',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.9),
            ],
          ),
          Positioned(
            top: screenHeight * containerTopPercentage,
            child: SingleChildScrollView(
              child: Container(
                width: screenWidth,
                height: 600,
                decoration: BoxDecoration(
                  color: gradient1,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(children: [
                            Text(
                              "Mood Food",
                              style: TextStyle(color: blackColor).s(30).w(6),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            Images.faceScanImage,
                            height: 170,
                            width: 160,
                          ),
                          Text(
                            "Face Scanner",
                            style: TextStyle(color: blackColor).s(16).w(6),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RecommendationView(), // Navigate to the ClimateImpact page
                                ),
                              );
                            },
                            child: Container(
                              width: 116,
                              height: 24,
                              decoration: BoxDecoration(
                                color: primaryColorWithOpacity,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                "Get Started",
                                style: TextStyle(color: blackColor).s(16).w(6),
                              )),
                            ),
                          ),
                          Text(
                            "How are you feeling today?  ",
                            style: TextStyle(color: whiteColor).s(16).w(6),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: const BackButtonWidget(),
          ),
        ],
      ),
    );
  }

  mealsTabs() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: gradient1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 155,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Images.lunchImage,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Vegetable Stir-Fry:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Quantity: 1:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Broccoli,Bell peppers,Carrots,\n Soy sauce,Garlic",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 155,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Images.lunchImage,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Vegetable Stir-Fry:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Quantity: 1:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Broccoli,Bell peppers,Carrots,\n Soy sauce,Garlic",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  impactTabs() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: gradient1.withOpacity(0.60),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: whiteColor,
                    ),
                    hintText: 'Search Meals',
                    hintStyle: const TextStyle(color: whiteColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Vegetable Stir-Fry",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            Images.piachartImage,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 389,
            height: 496,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: gradient1,
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 77.24,
                      height: 25,
                      decoration: BoxDecoration(
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    Container(
                      width: 99.24,
                      height: 25,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Center(child: Text("25%")),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Water Usage",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Green Low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Tomatoes: High",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Efficient Irrigation:  Low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 77.24,
                      height: 25,
                      decoration: BoxDecoration(
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    Container(
                      width: 99.24,
                      height: 25,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Center(child: Text("20 qsm")),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Vegetables:  Low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Roots:  Efficient",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      " Sustainable:  Efficient",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Efficient Irrigation:  Low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 77.24,
                      height: 25,
                      decoration: BoxDecoration(
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    Container(
                      width: 99.24,
                      height: 25,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Center(child: Text("15%")),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Water Usage",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Green Low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Tomatoes: High",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Efficient Irrigation:  Low",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          educationalMaterial(),
        ],
      ),
    );
  }

  educationalMaterial() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 10,
          ),
          child: Container(
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.dormonImage,
                      width: 172,
                      height: 165,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.VoiceImage,
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Text(
                "Welcome to Climate Impact Monitoring!",
                style: TextStyle(color: blackColor).s(12).w(6),
              )
            ]),
            Row(children: [
              Text(
                "Current Status:",
                style: TextStyle(color: gradient2).s(24).w(6),
              )
            ]),
            Row(children: [
              Text(
                "Total Carbon Footprint: 150 kg co2 \nSustainable Choices: 60%",
                style: TextStyle(color: blackColor).s(12).w(4),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Images.homeIcon,
              height: 40,
            ),
            Text(
              "",
              style: TextStyle(color: whiteColor).s(20).w(6),
            ),
            Row(
              children: [
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
                const SizedBox(width: 5),
                Image.asset(
                  Images.homeMenu,
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
