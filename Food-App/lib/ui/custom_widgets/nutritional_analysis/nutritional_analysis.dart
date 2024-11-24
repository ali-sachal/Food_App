import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:percent_indicator/percent_indicator.dart'; // Import this package
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';

nutritionalAnalysis(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 30),
      Center(
        child: Text(
          "Dietary and Nutritional Analysis",
          style: const TextStyle().s(14).w(6),
        ),
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          Text(
            "suggested by",
            style: const TextStyle().s(14).w(6),
          ),
          Text(
            " AI",
            style: const TextStyle().s(14).w(6).cl(PrimaryColor),
          ),
        ],
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: MediaQuery.of(context).size.height / 2.3,
        child: AnimationLimiter(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(
                          top: 10, bottom: 10, right: 5, left: 5),
                      decoration: BoxDecoration(
                        gradient: boxLinearGradeint,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                Images.eggPasta2,
                                height: 120,
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Egg Pasta',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: whiteColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              Images.add,
                                              scale: 3,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 6.0),
                                              child: Icon(
                                                Icons.add,
                                                size: 26,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            CircularPercentIndicator(
                                              radius: 25.0,
                                              lineWidth: 4.0,
                                              percent: 0.8,
                                              center: const Text("80%"),
                                              progressColor: whiteColor,
                                            ),
                                            const SizedBox(height: 8),
                                            const Text(
                                              'Carbs',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: whiteColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircularPercentIndicator(
                                              radius: 25.0,
                                              lineWidth: 4.0,
                                              percent: 0.7,
                                              center: const Text("70%"),
                                              progressColor: whiteColor,
                                            ),
                                            const SizedBox(height: 8),
                                            const Text(
                                              'Protein',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: whiteColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CircularPercentIndicator(
                                              radius: 25.0,
                                              lineWidth: 4.0,
                                              percent: 0.6,
                                              center: const Text("60%"),
                                              progressColor: whiteColor,
                                            ),
                                            const SizedBox(height: 8),
                                            const Text(
                                              'Fat',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: whiteColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
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
