import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:security_gdpr/core/constant/color.dart';

import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

customizedWorkplan(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Center(
        child: Text(
          "Customized Workout Program",
          style: style16B,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Center(
          child: CustomButton(text: "Customise your plan", onPressed: () {}),
        ),
      ),
      EasyDateTimeLine(
        activeColor: PrimaryColor,
        initialDate: DateTime.now(),
        onDateChange: (selectedDate) {
          //`selectedDate` the new date selected.
        },
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Plan",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 150,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: planImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final planitem = planImages[index];
              return Container(
                padding: EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                child: Image.asset(planitem["image"]!),
                // width: 102,
                // height: 136,
              );
            }),
      ),
      SizedBox(
        height: 180,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              final sheduleItem = shedule[index];
              return Container(
                width: 151,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: boxLinearGradeint,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          sheduleItem["name"]!,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          sheduleItem["description"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 25.0,
                      lineWidth: 4.0,
                      percent: 0.8,
                      progressColor: PrimaryColor,
                    ),
                  ],
                ),
              );
            }),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}

final List<Map<String, String>> planImages = [
  {'image': "assets/images/glasswater.png"},
  {
    'image': "assets/images/fruits.png",
  },
  {
    'image': "assets/images/sleepingbed.png",
  },
];

final List<Map<String, String>> shedule = [
  {
    'name': "Water",
    "description": "6 cups of day",
  },
  {
    'name': "Fruits",
    "description": "300 grams of day",
  },
  {
    'name': "Sleep",
    "description": "8 hours a day",
  },
];
