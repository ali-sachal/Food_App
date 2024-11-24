import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';

class MealRecipe extends StatefulWidget {
  const MealRecipe({super.key});

  @override
  State<MealRecipe> createState() => _MealRecipeState();
}

class _MealRecipeState extends State<MealRecipe> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Image.asset(Images.mRecipeBg),
            Positioned(
              top: 30,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Images.homeIcon,
                    height: 40,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Images.homeScan,
                        height: 40,
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
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height / 1.4,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(4, 0),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: AnimationLimiter(
                      child: AnimationConfiguration.synchronized(
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          verticalOffset: -50.0,
                          child: FadeInAnimation(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Kladdkaka',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Kladdkaka, often referred to as "Swedish sticky chocolate\ncake," is a beloved dessert that captures the hearts of many.\nHailing from Sweden, this indulgent treat is a delightful\nfusion of simplicity and decadence.',
                                    style: const TextStyle().w(4).s(10),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer_sharp,
                                        size: 12,
                                        color: PrimaryColor,
                                      ),
                                      Text(
                                        '  35 Minutes',
                                        style: const TextStyle().w(4).s(12),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Image.asset(
                                        Images.cRecipe,
                                        // height: 40,
                                      ),
                                      Text(
                                        '  288 Calories',
                                        style: const TextStyle().w(4).s(12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "   Nutritional Value",
                                        style: TextStyle()
                                            .s(14)
                                            .w(6)
                                            .cl(PrimaryColor),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: PrimaryColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Show All",
                                          style: TextStyle()
                                              .w(6)
                                              .s(12)
                                              .cl(PrimaryColor),
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            radius: 35.0,
                                            lineWidth: 6.0,
                                            percent: 0.6,
                                            center: Text("6%"),
                                            progressColor: PrimaryColor,
                                          ),
                                          SizedBox(height: 8),
                                          const Text(
                                            'Protein',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            radius: 35.0,
                                            lineWidth: 6.0,
                                            percent: 0.15,
                                            center: Text("15%"),
                                            progressColor: PrimaryColor,
                                          ),
                                          SizedBox(height: 8),
                                          const Text(
                                            'Carbohydrates',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            radius: 35.0,
                                            lineWidth: 6.0,
                                            percent: 0.17,
                                            center: Text("17%"),
                                            progressColor: PrimaryColor,
                                          ),
                                          SizedBox(height: 8),
                                          const Text(
                                            'Fat',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  _calories(
                                      title: 'Calories', unit: '288 Calories'),
                                  _calories(title: 'Protein', unit: '3g'),
                                  _calories(
                                      title: 'Carbohydrates', unit: '41g'),
                                  _calories(title: 'Fat', unit: '13g'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _calories({title, unit}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle().w(6),
          ),
          Text(
            unit,
            style: TextStyle().w(6),
          )
        ],
      ),
    );
  }
}
