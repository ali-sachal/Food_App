import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/images.dart';

class HealthRecommendationsView extends StatelessWidget {
  const HealthRecommendationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Personalized\n Recommendations",
                style: TextStyle(color: Colors.black).s(24).w(6),
                textAlign: TextAlign.center,
              ),

            ],
          ),
          Container(
            width: double.infinity,
            color: gradient1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 118,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.familyImage),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Diet Adjustments",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
                      height: 118,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.exerciseImage),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Exercies Tips",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
                      height: 118,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.sleepImage),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    SizedBox(height: 10),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 118,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.stressImage),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Stress Managements",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
                      height: 118,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.checkImage),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Regular Check-up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
}