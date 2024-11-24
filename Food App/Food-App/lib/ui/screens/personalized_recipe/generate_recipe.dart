import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/images.dart';

class GenerateRecipe extends StatelessWidget {
  const GenerateRecipe({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 35),
            child: SingleChildScrollView(
              child: AnimationLimiter(
                child: AnimationConfiguration.synchronized(
                  duration: const Duration(milliseconds: 500),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                Images.homeIcon,
                                height: 40,
                              ),
                              Text(
                                "    Generated Recipe",
                                style: TextStyle().w(6).s(13),
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
                          const SizedBox(height: 20),
                          Image.asset(
                            Images.generateRecipe,
                            // height: 150,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pancakes are a beloved traditional dish that is enjoyed\nby people of all ages.\n\nMade from a simple batter of eggs, milk, flour, and a pinch\nof salt, Swedish pancakes are cooked on a hot, lightly\ngreased griddle or frying pan until they are golden brown\nand slightly crispy at the edges. The batter is poured thinly\nto create a pancake that is both light and airy.\n\nOnce cooked, pancakes can be enjoyed in a variety of\nways. They are often served rolled or folded and filled with\nsweet or savory toppings. Common sweet fillings include\nlingonberry jam, fresh berries, whipped cream, or a dusting\nof powdered sugar. For a savory twist, they can be filled\nwith cheese, ham, or smoked salmon.",
                                  style: TextStyle().w(5).s(12),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  "Nutritional Value",
                                  style: TextStyle().w(6).s(14),
                                ),
                                const SizedBox(height: 15),
                                Column(
                                  children: [
                                    nutritionalValue(
                                        name: "Total Fat",
                                        percentage: "3%",
                                        kg: "3g"),
                                    nutritionalValue(
                                        name: "Saturated Fat",
                                        percentage: "6%",
                                        kg: "1g"),
                                    nutritionalValue(
                                        name: "Cholesterol",
                                        percentage: "16%",
                                        kg: "47mg"),
                                    nutritionalValue(
                                        name: "Sodium",
                                        percentage: "5%",
                                        kg: "122mg"),
                                    nutritionalValue(
                                        name: "Total Carbohydrate",
                                        percentage: "3%",
                                        kg: "8g"),
                                    nutritionalValue(
                                        name: "Dietary Fiber",
                                        percentage: "1%",
                                        kg: "0g"),
                                    nutritionalValue(
                                        name: "Protein",
                                        percentage: "6%",
                                        kg: "3g"),
                                    nutritionalValue(
                                        name: "Calcium",
                                        percentage: "3%",
                                        kg: "35mg"),
                                    nutritionalValue(
                                        name: "Iron",
                                        percentage: "3%",
                                        kg: "1mg"),
                                    nutritionalValue(
                                        name: "Potassium",
                                        percentage: "1%",
                                        kg: "59mg"),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "    Calories",
                                          style: const TextStyle().w(6).s(14),
                                        ),
                                        Text(
                                          "    66",
                                          style: const TextStyle().w(6).s(14),
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  Images.refresh,
                                  height: 15,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Generate New Recipe",
                                style: const TextStyle().w(6).s(14),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Center(
                            child: Text(
                              "New Ingredients",
                              style: const TextStyle().w(6).s(14),
                            ),
                          ),
                          const SizedBox(height: 25),
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
    );
  }

  nutritionalValue(
      {required String name, required String percentage, required String kg}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "●   ${name}",
              style: const TextStyle().w(6).s(12),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              percentage,
              style: const TextStyle().w(6).s(12).cl(Colors.grey),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              kg,
              style: const TextStyle().w(6).s(12).cl(Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
