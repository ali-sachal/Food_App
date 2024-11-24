import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/screens/group_training/exercise_records.dart';
import 'package:security_gdpr/ui/screens/points_and_ranking/points_and_ranking.dart';
import 'package:security_gdpr/ui/screens/recipt_generating/choose_flavour_screen.dart';

class SubLiveFeedback extends StatelessWidget {
  const SubLiveFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/live_feedback.jpg")),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // appBar_function(),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StepByStepGuiding()));
            },
            child: Text(
              'See Step-By-Step guide for this workout',
              style: TextStyle(
                  color: Colors.orange,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.orange),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                  text: "See Exercise Records",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseRecords()));
                  }),
              CustomButton(
                  text: "Earned Points",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PointsAndRanking()));
                  }),
            ],
          )
        ],
      ),
    ));
  }
}

appBar_function() {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/app_bar_image.png",
              width: 44,
              height: 44,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/scan.png",
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  "assets/images/menu.png",
                  height: 40,
                  width: 40,
                )
              ],
            )
          ],
        ),
        // Text(
        //   "Live Workout",
        //   style: TextStyle(
        //       fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        // )
      ],
    ),
  );
}

_appBar() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: PrimaryColor),
    child: Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  Images.homeIcon,
                  height: 40,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Clara!",
                      style: TextStyle().w(6).s(13),
                    ),
                    Text(
                      "Enjoy Amazing Recipes...",
                      style: TextStyle().w(6).s(13),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  Images.homeScan,
                  scale: 3,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  Images.homeMenu,
                  scale: 5,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    ),
  );
}
