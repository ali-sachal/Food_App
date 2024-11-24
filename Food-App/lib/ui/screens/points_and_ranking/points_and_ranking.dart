import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';

class PointsAndRanking extends StatefulWidget {
  @override
  _HealthPredictorState createState() => _HealthPredictorState();
}

class _HealthPredictorState extends State<PointsAndRanking> {
  String selectedButton = 'Daily';

  void _onButtonPressed(String button) {
    setState(() {
      selectedButton = button;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 206.h,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30.r,
                              backgroundColor: PrimaryColor,
                              child: CircleAvatar(
                                radius: 25.sp,
                                backgroundImage: AssetImage(Images.homeIcon),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Earned Points",
                                  style:
                                      TextStyle(color: blackColor).s(20).w(6),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.5),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(
                                        color: PrimaryColor, width: 2),
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
                                  child: Image.asset(Images.homeScan, scale: 4),
                                ),
                                SizedBox(width: 5.w),
                                Image.asset(Images.homeMenu, scale: 5),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                mainContainer(),
                // if (selectedButton == 'Daily') ...[
                //
                //   wellComeContainer(),
                // ],
                // SizedBox(height: 10.h),
                // _getContentForSelectedButton(selectedButton),
              ],
            ),
            Positioned(
              top: 100.h,
              left: 20.w,
              right: 20.w,
              child: Container(
                margin: EdgeInsets.all(8.0),
                width: 390.w,
                height: 160.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Images.pointsRankingImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Earn points by achieving goals.",
                                style:
                                    TextStyle(color: Colors.white).s(12).w(4),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Row(
                              children: [
                                Text(
                                  "Health",
                                  style:
                                      TextStyle(color: Colors.white).s(28).w(7),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Predictor",
                                  style:
                                      TextStyle(color: Colors.white).s(28).w(7),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mainContainer() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: primaryColorWithOpacity,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: whiteColor,
                    ),
                    hintText: 'Search Meals',
                    hintStyle: const TextStyle(color: Colors.black),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Points",
                  style: TextStyle(color: primaryColorWithOpacity).s(16).w(4),
                  textAlign: TextAlign.center),
              Container(
                height: 21,
                width: 71,
                decoration: BoxDecoration(
                  color: primaryColorWithOpacity,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Show All",
                    style: TextStyle(color: Colors.white).s(12).w(4),
                    textAlign: TextAlign.center),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Exercise",
                  style: TextStyle(color: greyColor).s(12).w(4),
                  textAlign: TextAlign.center),
              Text("Goal",
                  style: TextStyle(color: greyColor).s(12).w(4),
                  textAlign: TextAlign.center),
              Text("Points",
                  style: TextStyle(color: greyColor).s(12).w(4),
                  textAlign: TextAlign.center),
              Text("Process",
                  style: TextStyle(color: greyColor).s(12).w(4),
                  textAlign: TextAlign.center),
            ],
          ),
          SquatContainer(),
          SizedBox(height: 10), // Space between containers
          SquatContainer(),
          SizedBox(height: 10), // Space between containers
          SquatContainer(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                " Group Ranking",
                style: TextStyle(color: primaryColorWithOpacity).s(12).w(4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GroupRankings(),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                " Points Ranking",
                style: TextStyle(color: primaryColorWithOpacity).s(12).w(4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GroupRankings(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                " Earn Points by achieving your goals and rank top in the \nlist.",
                style: TextStyle(color: Colors.grey).s(10).w(4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                " Earn Points by achieving your goals and rank top in the \nlist.",
                style: TextStyle(color: Colors.grey).s(10).w(4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                " Earn Points by achieving your goals and rank top in the \nlist.",
                style: TextStyle(color: Colors.grey).s(10).w(4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget SquatContainer() {
    return Container(
      width: 390,
      height: 83,
      decoration: BoxDecoration(
        color: gradient1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Squat Text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Squat",
                  style: TextStyle(color: blackColor).s(16).w(6),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Sets and Reps Text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "3 Sets \nof 10 Reps",
                  style: TextStyle(color: blackColor).s(12).w(4),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Completed Text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+5",
                  style: TextStyle(color: blackColor).s(12).w(6),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // See Rankings Text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Completed",
                  style: TextStyle(color: Colors.green).s(11).w(4),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See \nRankings",
                  style: TextStyle(color: blackColor).s(10).w(4),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget groupRankings() {
    return Container(
      width: 390,
      height: 83,
      decoration: BoxDecoration(
        color: gradient1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Images.goldModelImage,
              ),
              Image.asset(Images.userImage),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Navile M.\nSweden",
                      style: TextStyle(color: blackColor).s(10).w(4),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Squat",
                      style: TextStyle(color: blackColor).s(10).w(4),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "85",
                      style: TextStyle(color: blackColor).s(10).w(4),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget RecentsContainer(
      {required String label,
      required String labe2,
      required String imagePath}) {
    return GestureDetector(
      onTap: () => _onButtonPressed(label),
      child: Container(
        width: 300,
        height: 45,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 5),
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                labe2,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroupRankings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      decoration: BoxDecoration(
        color: gradient1, // Use gradient1 or any desired color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding for aesthetics
            child: Row(
              children: [
                // Gold Medal Image
                Image.asset(
                  Images.goldModelImage,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // User Image
                Image.asset(
                  Images.homeIcon,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // Name Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Navile M.\nSweden",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Exercise Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Squat",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Score Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "85",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color:
                primaryColorWithOpacity, // Customize the color of the divider
            thickness: 1, // Set the thickness of the divider
            height: 0, // No extra height around the divider
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding for aesthetics
            child: Row(
              children: [
                // Gold Medal Image
                Image.asset(
                  Images.goldModelImage,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // User Image
                Image.asset(
                  Images.homeIcon,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // Name Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Navile M.\nSweden",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Exercise Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Squat",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Score Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "85",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color:
                primaryColorWithOpacity, // Customize the color of the divider
            thickness: 1, // Set the thickness of the divider
            height: 0, // No extra height around the divider
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding for aesthetics
            child: Row(
              children: [
                // Gold Medal Image
                Image.asset(
                  Images.goldModelImage,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // User Image
                Image.asset(
                  Images.homeIcon,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // Name Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Navile M.\nSweden",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Exercise Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Squat",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Score Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "85",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color:
                primaryColorWithOpacity, // Customize the color of the divider
            thickness: 1, // Set the thickness of the divider
            height: 0, // No extra height around the divider
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding for aesthetics
            child: Row(
              children: [
                // Gold Medal Image
                Image.asset(
                  Images.goldModelImage,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // User Image
                Image.asset(
                  Images.homeIcon,
                  width: 30, // Set width to fit in the row
                  height: 30, // Set height to fit in the row
                ),
                // Name Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Navile M.\nSweden",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Exercise Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Squat",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Score Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "85",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
