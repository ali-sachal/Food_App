import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/screens/personalized_recipe/generate_recipe.dart';

class AiPersonalizedRecipe extends StatefulWidget {
  const AiPersonalizedRecipe({Key? key}) : super(key: key);

  @override
  State<AiPersonalizedRecipe> createState() => _AiPersonalizedRecipeState();
}

class _AiPersonalizedRecipeState extends State<AiPersonalizedRecipe> {
  String selectedRecipe = "Select Recipe";
  bool isDropdownOpened = false;
  List<String> recipes = ["Spaghetti", "Pizza", "Burger", "Salad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: AnimationLimiter(
          child: AnimationConfiguration.synchronized(
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Column(
                  children: [
                    Image.asset(
                      Images.personalizedRecipe,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recognized Ingredients",
                            style: const TextStyle().w(7).s(15),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Column(
                              children: [
                                IngredientsList(name: "Egg", percentage: "95%"),
                                IngredientsList(
                                    name: "Flour", percentage: "92%"),
                                IngredientsList(
                                    name: "Salt", percentage: "63%"),
                                IngredientsList(
                                    name: "Sugar", percentage: "84%"),
                                IngredientsList(
                                    name: "Milk", percentage: "79%"),
                                IngredientsList(
                                    name: "Butter", percentage: "77%"),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '6 Ingredients found',
                            style: const TextStyle().w(6).s(12),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Missing Ingredients (from inventory)',
                            style: const TextStyle().w(6).s(13),
                          ),
                          SizedBox(height: 15),
                          IngredientsList(name: "Egg", percentage: ""),
                          IngredientsList(name: "Flour", percentage: ""),
                          SizedBox(height: 20),
                          Center(
                            child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                    color: PrimaryColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Icon(Icons.add, color: Colors.white),
                                    SizedBox(width: 10),
                                    Text(
                                      "Add to Shopping List",
                                      style: TextStyle()
                                          .s(12)
                                          .w(6)
                                          .cl(Colors.white),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(height: 20),
                          const Text(
                            " Recipe (Sugar-Free, Desert, etc)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isDropdownOpened = !isDropdownOpened;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                color: PrimaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(selectedRecipe),
                                  Icon(Icons.arrow_drop_down_rounded),
                                ],
                              ),
                            ),
                          ),
                          if (isDropdownOpened)
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                color: PrimaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: recipes.map((String recipe) {
                                  return ListTile(
                                    title: Text(recipe),
                                    onTap: () {
                                      setState(() {
                                        selectedRecipe = recipe;
                                        isDropdownOpened = false;
                                      });
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                          SizedBox(height: 15),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GenerateRecipe()));
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF0F0EE),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    "Generate Recipe",
                                    style: TextStyle().s(12).w(6),
                                  )),
                            ),
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFFF0F0EE),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  "Donate Remaining Ingredients",
                                  style: TextStyle().s(12).w(6),
                                )),
                          ),
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
                                    style: TextStyle().s(14),
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
                                          style: TextStyle().s(14),
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
                                          style: TextStyle().s(14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  IngredientsList({required String name, required String percentage}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "●   ${name}",
            style: const TextStyle().w(6).s(12),
          ),
          Text(
            percentage,
            style: const TextStyle().w(6).s(12),
          ),
        ],
      ),
    );
  }
}
