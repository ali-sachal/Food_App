import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/ui/screens/group_training/training_services.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';
import '../points_and_ranking/points_and_ranking.dart';

class SoloTraining extends StatefulWidget {
  const SoloTraining({super.key});

  @override
  _ClimateImpactState createState() => _ClimateImpactState();
}

class _ClimateImpactState extends State<SoloTraining>
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

    final imageHeightPercentage = 459 / screenHeight;
    final containerTopPercentage = 243 / screenHeight;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background Image
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    Images.soloImage,
                    width: screenWidth,
                    height: screenHeight * imageHeightPercentage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: screenHeight * 0.4), // Space below image
              ],
            ),
          ),
          BackButtonWidget(),
          Positioned(
            bottom: 1, // Positioned at the bottom
            child: BottomContainer(), // Ensure this appears over the image
          ),
        ],
      ),
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
        child: Container(
          width: 400,
          color: Color(0xFF232323),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Space evenly across the row
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.durationImage, // Replace with your image path
                          width: 62, // Adjust width as needed
                          height: 72, // Adjust height as needed
                        ),
                        SizedBox(height: 4), // Space between image and text
                        Text(
                          "Duration",
                          style: TextStyle(color: whiteColor)
                              .s(12)
                              .w(6), // Your text style
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TrainingServicesScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images
                                .realTimeImage, // Replace with your second image path
                            width: 62, // Adjust width as needed
                            height: 72, // Adjust height as needed
                          ),
                          SizedBox(height: 4), // Space between image and text
                          Text(
                            "Real-Time", // Caption for the second image
                            style: TextStyle(color: whiteColor).s(12).w(6),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PointsAndRanking()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.durationImage,
                            width: 62,
                            height: 72,
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Points\nRankings",
                            style: TextStyle(color: whiteColor).s(12).w(6),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Space evenly across the row
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.durationImage, // Replace with your image path
                          width: 62, // Adjust width as needed
                          height: 72, // Adjust height as needed
                        ),
                        SizedBox(height: 4), // Space between image and text
                        Text(
                          "Nutrition&\n Health",
                          style: TextStyle(color: whiteColor)
                              .s(12)
                              .w(6), // Your text style
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images
                              .durationImage, // Replace with your second image path
                          width: 62, // Adjust width as needed
                          height: 72, // Adjust height as needed
                        ),
                        SizedBox(height: 4), // Space between image and text
                        Text(
                          "Another Label", // Caption for the second image
                          style: TextStyle(color: whiteColor).s(12).w(6),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images
                              .goalsImage, // Replace with your third image path
                          width: 62, // Adjust width as needed
                          height: 72, // Adjust height as needed
                        ),
                        SizedBox(height: 4), // Space between image and text
                        Text(
                          "Goals", // Caption for the third image
                          style: TextStyle(color: whiteColor).s(12).w(6),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
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
              "Scan Product",
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
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: List.generate(3, (index) {
                return Container(
                  width: 78.w,
                  height: 78.h,
                  margin: EdgeInsets.only(
                      bottom: 10.h), // Spacing between containers
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Keep background transparent
                    borderRadius: BorderRadius.circular(8.5.r),
                    border: Border.all(
                        color: gradient2, width: 1), // Border as specified
                  ),
                  child: Center(
                    child: Text(
                      'Weight', // Centered text
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
            ),
            Column(
              children: List.generate(3, (index) {
                return Container(
                  width: 78.w,
                  height: 78.h,
                  margin: EdgeInsets.only(
                      bottom: 10.h), // Spacing between containers
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Keep background transparent
                    borderRadius: BorderRadius.circular(8.5.r),
                    border: Border.all(
                        color: gradient2, width: 1), // Border as specified
                  ),
                  child: Center(
                    child: Text(
                      'Weight', // Centered text
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        )
      ],
    );
  }
}
