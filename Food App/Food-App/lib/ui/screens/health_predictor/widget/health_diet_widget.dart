import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import '../../../../core/constant/images.dart';

class DietHealthView extends StatelessWidget {
  const DietHealthView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  "Diet OverView",
                  style: TextStyle(color: Colors.black).s(16).w(6),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              height: 118,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.currentIntake), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Current Calorie Intake",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 118,
              margin: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.currentIntake), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Current Calorie Intake",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Meal log",
              style: TextStyle(color: Colors.black).s(16).w(6),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              height: 118,
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.breakfastImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Break fast",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 118,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.lunchImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Lunch",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Snack",
              style: TextStyle(color: Colors.black).s(24).w(6),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 118,
              margin: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.snackImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Snack",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 118,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.breakfastImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Dinner",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Row(
            //   children: [
            //     Text(
            //       "Suggested Meals",
            //       style: TextStyle(color: Colors.black).s(24).w(6),
            //       textAlign: TextAlign.center,
            //     ),
            //   ],
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Container(
            //     width: double.infinity,
            //     height: 70,
            //     decoration: BoxDecoration(
            //       color: primaryColorWithOpacity,
            //       borderRadius: BorderRadius.only(
            //         topRight: Radius.circular(10),
            //         topLeft: Radius.circular(10),
            //         bottomRight: Radius.circular(10),
            //         bottomLeft: Radius.circular(10),
            //       ),
            //     ),
            //     child: Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             Image.asset(
            //               Images.greyContinerImge,
            //               height: 70,
            //               width: 70,
            //             ),
            //             SizedBox(width: 10),
            //             Image.asset(
            //               Images.greyContinerImge,
            //               height: 70,
            //               width: 70,
            //             ),
            //             SizedBox(width: 10),
            //             Image.asset(
            //               Images.greyContinerImge,
            //               height: 70,
            //               width: 70,
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            // Row(
            //   children: [
            //     Text(
            //       "Nutritional Tips",
            //       style: TextStyle(color: Colors.black).s(24).w(6),
            //       textAlign: TextAlign.center,
            //     ),
            //   ],
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Container(
            //     width: double.infinity,
            //     height: 70,
            //     decoration: BoxDecoration(
            //       color: primaryColorWithOpacity,
            //       borderRadius: BorderRadius.only(
            //         topRight: Radius.circular(10),
            //         topLeft: Radius.circular(10),
            //         bottomRight: Radius.circular(10),
            //         bottomLeft: Radius.circular(10),
            //       ),
            //     ),
            //     child: Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             Image.asset(
            //               Images.greyContinerImge,
            //               height: 70,
            //               width: 70,
            //             ),
            //             SizedBox(width: 10),
            //             Image.asset(
            //               Images.greyContinerImge,
            //               height: 70,
            //               width: 70,
            //             ),
            //             SizedBox(width: 10),
            //             Image.asset(
            //               Images.greyContinerImge,
            //               height: 70,
            //               width: 70,
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
