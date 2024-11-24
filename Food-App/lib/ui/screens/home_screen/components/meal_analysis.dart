import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/screens/Meal_screen/meals_screen.dart';

mealAnalysis(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Meal Analysis",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/person_checkup.png",
            height: 200,
            width: 97,
          ),
          CircularPercentIndicator(
            radius: 90.0, // Adjust the radius as per your design
            lineWidth: 15.0, // Width of the progress arc
            percent: 0.7, // Set percent (70% in this example)
            animation: true,
            animationDuration: 1200,
            backgroundColor:
                Colors.grey.shade200, // Background color of the arc
            progressColor: const Color(0xFFFFA722), // Progress color
            circularStrokeCap:
                CircularStrokeCap.round, // Rounded ends of the progress bar
            center: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "900",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFA722), // Color matching the arc
                  ),
                ),
                Text(
                  "kcal \n/1800",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
                border: Border.all(color: PrimaryColor),
                color: PrimaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
            child: const Text("Weekly"),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
                border: Border.all(color: PrimaryColor),
                color: whiteColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: const Text("Monthly"),
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Image.asset(
                  "assets/icons/spoon.png",
                  width: 12,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eaten",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Row(
                    children: [
                      Text("420"),
                      Text(
                        "/1800",
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Image.asset(
                  "assets/icons/fire.png",
                  width: 12,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Burned",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Row(
                    children: [
                      Text("420"),
                      Text(
                        "/1800",
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MealsScreen()));
            },
            child: Text(
              "See Statistics",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: PrimaryColor),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                const AssetImage(
                  "assets/icons/down-arrow.png",
                ),
                size: 15,
                color: PrimaryColor,
              ))
        ],
      ),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Carbohydrates",
                        style: const TextStyle().w(700),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "160",
                        style: const TextStyle().w(700),
                      ),
                      const Text(
                        "/250",
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  LinearPercentIndicator(
                    progressColor: PrimaryColor,
                    barRadius: const Radius.circular(12),
                    percent: 0.7,
                  )
                ],
              ),
            );
          }),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                const AssetImage(
                  "assets/icons/left_arrow.png",
                ),
                size: 15,
                color: PrimaryColor,
              )),
          Row(
            children: [
              Image.asset(
                'assets/icons/calender.png',
                scale: 5,
              ),
              Text(
                "Today,May 15",
                style: TextStyle(color: PrimaryColor),
              ),
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    const AssetImage(
                      "assets/icons/right_arrow.png",
                    ),
                    size: 15,
                    color: PrimaryColor,
                  ))
            ],
          )
        ],
      ),
      ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final inventoryItem = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MealsScreen()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                // height: 102,
                margin: const EdgeInsets.all(8),
                decoration: boxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      inventoryItem["image"]!,
                      width: 115,
                      height: 87,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              inventoryItem["name"]!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Recomended: ",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              "606-807 kcal",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: PrimaryColor)),
                      child: Icon(
                        Icons.add,
                        color: PrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            );
          })
    ],
  );
}

final List<Map<String, String>> items = [
  {
    'name': 'Breakfast',
    'image': "assets/images/breakfast2.png",
  },
  {
    'name': 'Lunch',
    'image': "assets/images/lunch2.png",
  },
  {
    'name': 'Dinner',
    'image': "assets/images/dinner2.png",
  },
  {
    'name': 'Snacks',
    'image': "assets/images/snacks2.png",
  },
];
