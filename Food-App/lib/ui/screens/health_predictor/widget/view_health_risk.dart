import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/images.dart';
import 'custome_form_filed.dart';
import 'grafa_widget.dart';

class ViewHealthRisk extends StatelessWidget {
  const ViewHealthRisk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomField(
            title: 'Name',
            fileName: 'User name',
          ),
          CustomField(
            title: 'Age',
            fileName: '1',
          ),
          CustomField(
            title: 'Gender',
            fileName: 'Male/Female',
          ),
          CustomField(
            title: 'Weight',
            fileName: '40 Kg',
          ),
          CustomField(
            title: 'Height',
            fileName: '5 ft',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Medical History",
                style: TextStyle(color: Colors.black).s(24).w(6),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 118,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Images.detailsPastImage),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Details of past illness",
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
                        image: AssetImage(Images.currentMeditionImage),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Current medication",
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
                        image: AssetImage(Images.familyImage),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Family health history",
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Risk Details",
                    style: TextStyle(color: Colors.black).s(24).w(6),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              BarGraphWidget(),
              SizedBox(
                height: 10,
              ),
              actionableSuggestions(),
              SizedBox(
                height: 10,
              ),
              educationalMaterial(),
            ],
          ),
        ],
      ),
    );
  }

  actionableSuggestions() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Actionable Suggestions",
              style: TextStyle(color: Colors.black).s(20).w(6),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  Images.homeWorkImage,
                  width: 83,
                  height: 83,
                ),
                Container(
                  width: 79,
                  height: 42,
                  decoration: BoxDecoration(
                    color: gradient2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Daily\n Tips",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  Images.MonthlyImage,
                  width: 83,
                  height: 83,
                ),
                Container(
                  width: 79,
                  height: 42,
                  decoration: BoxDecoration(
                    color: gradient2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Monthly\n Tips",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  Images.DietImage,
                  width: 83,
                  height: 83,
                ),
                Container(
                  width: 79,
                  height: 42,
                  decoration: BoxDecoration(
                    color: gradient2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Diet\nPlan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  educationalMaterial() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              Images.WaveImage,
              width: 83,
              height: 83,
            ),
            Text(
              "Health -related articles and videos",
              style: TextStyle(color: Colors.black).s(12).w(6),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              Images.OnlineImage,
              width: 83,
              height: 83,
            ),
            Text(
              "Registration for online health seminars",
              style: TextStyle(color: Colors.black).s(12).w(6),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 10,
          ),
          child: Container(
            width: 390,
            decoration: BoxDecoration(
              color: gradient1,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text(
                  "Real time instant Notification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    Images.dormonImage,
                    width: 172,
                    height: 165,
                  ),

                ],),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.VoiceImage,
                      width:60,
                      height: 60,
                    ),

                  ],),
                SizedBox(height: 10,),
              ],
            ),
          ),
        )
      ],
    );
  }
}
