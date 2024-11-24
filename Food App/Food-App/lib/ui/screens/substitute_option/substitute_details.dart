import 'package:flutter/material.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';

class SubstituteDetails extends StatelessWidget {
  const SubstituteDetails({super.key});

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
            Image.asset(Images.onionBg),
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
                  Text(
                    "    Substitute Ingredients",
                    style: TextStyle().s(14).w(6).cl(Colors.white),
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
                height: size.height / 1.3,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Onions',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Here are the substitutes and nutritional facts of onions.',
                          style: TextStyle().w(4).s(11),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "   Substitutes",
                              style: TextStyle().s(15).w(6).cl(PrimaryColor),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: PrimaryColor),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Text(
                                    "Show All",
                                    style:
                                        TextStyle().w(6).s(11).cl(PrimaryColor),
                                  )),
                                ),
                                Icon(
                                  Icons.more_vert_rounded,
                                  size: 25,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(12),
                          margin: const EdgeInsets.only(
                              top: 5, bottom: 10, right: 5, left: 5),
                          decoration: BoxDecoration(
                            color: PrimaryColor,
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
                              Column(
                                children: [
                                  Image.asset(
                                    Images.avinash,
                                    height: 60,
                                  ),
                                  SizedBox(height: 5),
                                  const Text(
                                    'Shallots',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    Images.christopher,
                                    height: 60,
                                  ),
                                  SizedBox(height: 5),
                                  const Text(
                                    'Leeks',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    Images.lizaGolyarchuk,
                                    height: 60,
                                  ),
                                  SizedBox(height: 5),
                                  const Text(
                                    'Chives',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                'Show\nAll\nSubstitutes',
                                style: TextStyle().w(6).s(10).cl(PrimaryColor),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "   Nutritional Values",
                          style: TextStyle().s(15).w(6).cl(PrimaryColor),
                        ),
                        SizedBox(height: 15),
                        _nutritionalValues(
                            title: 'Total Fat',
                            percentage: '0%',
                            unit: '0.01g'),
                        _nutritionalValues(
                            title: 'Cholesterol', percentage: '0%', unit: '0g'),
                        _nutritionalValues(
                            title: 'Sodium', percentage: '0%', unit: '0g'),
                        _nutritionalValues(
                            title: 'Total Carbohydrate',
                            percentage: '3%',
                            unit: '9g'),
                        _nutritionalValues(
                            title: 'Protein', percentage: '2%', unit: '1.1g'),
                        _nutritionalValues(
                            title: 'Potassium', percentage: '4%', unit: '146g'),
                        _nutritionalValues(
                            title: 'Calories', percentage: '40', unit: ''),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2, color: PrimaryColor),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Need Better Guidance?",
                                  style: TextStyle().s(14).w(6),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        Images.voiceAssist,
                                        height: 35,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Real time Cooking\nVoice Assistant",
                                        style: TextStyle().s(14).w(6),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 70,
                                    width: 2,
                                    color: PrimaryColor,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        Images.guidance,
                                        height: 35,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Hands-Free Cooking\nGuidance",
                                        style: TextStyle().s(14).w(6),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
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

  _nutritionalValues(
      {required String title,
      required String percentage,
      required String unit}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle().s(12).w(6),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  percentage,
                  style: TextStyle().s(12).w(5),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  unit,
                  style: TextStyle().s(12).w(5),
                ),
              ],
            ),
          ),

          // SizedBox(width: 25)
        ],
      ),
    );
  }
}
