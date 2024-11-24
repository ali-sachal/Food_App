import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/ui/screens/health_predictor/widget/health_diet_widget.dart';
import 'package:security_gdpr/ui/screens/health_predictor/widget/health_recommendations.dart';
import 'package:security_gdpr/ui/screens/health_predictor/widget/view_health_risk.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';

class HealthPredictor extends StatefulWidget {
  @override
  _HealthPredictorState createState() => _HealthPredictorState();
}

class _HealthPredictorState extends State<HealthPredictor> {
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
                                  "Health Predictor",
                                  style:
                                      TextStyle(color: Colors.white).s(20).w(6),
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
                                  child: Image.asset(
                                    Images.homeScan,
                                    scale: 4,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Image.asset(
                                  Images.homeMenu,
                                  scale: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 90.h),
                mainContainer(),
                if (selectedButton == 'Daily') ...[
                  wellComeContainer(),
                ],
                SizedBox(height: 10.h),
                _getContentForSelectedButton(selectedButton),
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
                            image: AssetImage(Images.healthBG),
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
                                "Health status and key metrics.",
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
      height: 62,
      color: primaryColorWithOpacity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildButton("Daily", selectedButton == "Daily"),
            SizedBox(width: 10),
            _buildButton("Diet", selectedButton == "Diet"),
            SizedBox(width: 10),
            _buildButton("Activity", selectedButton == "Activity"),
            SizedBox(width: 10),
            _buildButton("Sleep", selectedButton == "Sleep"),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, bool isSelected) {
    return GestureDetector(
      onTap: () => _onButtonPressed(label),
      child: Container(
        width: 97,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? whiteColor : gradient2,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? primaryColorWithOpacity : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget wellComeContainer() {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Images.userImage,
                scale: 5,
              ),
              SizedBox(width: 8),
              Text(
                "Welcome \nAli",
                style: TextStyle(color: Colors.black).s(14).w(7),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Images.currentImage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      "Current Health \nStatus",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 118,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Images.healthImage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      "Current Health \nStatus",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 118.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage(
                      Images.todayImage,
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColorWithOpacity,
              ),
              child: Center(
                child: Text(
                  "Quick Action",
                  style: TextStyle(color: Colors.black).s(14).w(7),
                ),
              ),
            ),
          ),
          Container(
            height: 118.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage(
                      Images.mobileUser,
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 118.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage(
                      Images.sleepUser,
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 118.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage(
                      Images.workout,
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColorWithOpacity,
              ),
              child: Center(
                child: Text(
                  "More",
                  style: TextStyle(color: Colors.black).s(14).w(7),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColorWithOpacity,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  RecentsContainer(
                    label: "Walking",
                    labe2: "3000 Steps",
                    imagePath: Images.walkIcon,
                  ),
                  SizedBox(height: 10),
                  RecentsContainer(
                    label: "Breakfast",
                    labe2: "400 Calories",
                    imagePath: Images.mugeIcon,
                  ),
                  SizedBox(height: 10),
                  RecentsContainer(
                    label: "Sleep",
                    labe2: "7 hours",
                    imagePath: Images.sleepIcon,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getContentForSelectedButton(String button) {
    switch (button) {
      case 'Daily':
        return Text("Daily content here.");
      case 'Diet':
        return DietHealthView();
      case 'Activity':
        return HealthRecommendationsView();
      case 'Sleep':
        return ViewHealthRisk();
      default:
        return Container();
    }
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
