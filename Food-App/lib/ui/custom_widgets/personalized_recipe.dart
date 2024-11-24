import 'package:flutter/material.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/screens/personalized_recipe/ai_personalized_recipe.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/custom_textfield.dart';

personalizedRecipe(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 10,
      ),
      Center(
          child: Text(
        "Personalized Recipe",
        style: TextStyle().w(6).s(13),
      )),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Select Taste",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Taste",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Select Cuisine",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Cuisine",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        " Select Diet Preference",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Select Dietary Preference",
              style: TextStyle(color: Colors.white),
            ),
            Icon(Icons.arrow_drop_down_rounded)
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        " Any Suggestion",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      CustomTextField(
        fillColor: PrimaryColor,
        labelText: 'Write your suggestions',
        textAlign: TextAlign.start,
        keyBoardType: TextInputType.text,
        maxLine: 3,
        textInputAction: TextInputAction.done,
        onChanged: (value) {},
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your your suggestions";
          }
          return null;
        },
      ),
      const SizedBox(
        height: 15,
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
              decoration: BoxDecoration(
                  color: PrimaryColor, borderRadius: BorderRadius.circular(3)),
              child: Text(
                "Search Recipe",
                style: TextStyle().cl(Colors.white).s(12),
              )),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AiPersonalizedRecipe()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: PrimaryColor),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(
                  "Scan  Ingredients for Recipes",
                  style: TextStyle().s(12).cl(PrimaryColor),
                )),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "   Recommendations",
            style: TextStyle().s(14).w(6).cl(PrimaryColor),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: PrimaryColor),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              "Show All",
              style: TextStyle().w(6).s(12).cl(PrimaryColor),
            )),
          ),
        ],
      ),
      SizedBox(height: 15),
      Container(
        height: MediaQuery.of(context).size.height / 5,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
            return GridView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2 / 2,
              ),
              itemBuilder: (context, index) {
                return RecipeItems();
              },
              itemCount: 2,
            );
          },
        ),
      ),
      SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "   Social Recommendations",
            style: TextStyle().s(14).w(6).cl(PrimaryColor),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: PrimaryColor),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              "Show All",
              style: TextStyle().w(6).s(12).cl(PrimaryColor),
            )),
          ),
        ],
      ),
      SizedBox(height: 15),
      Container(
        height: MediaQuery.of(context).size.height / 5,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
            return GridView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2 / 2,
              ),
              itemBuilder: (context, index) {
                return RecipeItems();
              },
              itemCount: 2,
            );
          },
        ),
      ),
      SizedBox(height: 15),
    ],
  );
}

/// RecipeItems >>>>
class RecipeItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              Images.donate1,
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pytt i Panna',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_sharp,
                          color: PrimaryColor,
                          size: 18,
                        ),
                        Text('45 Minutes  ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            )),
                        Text(' Easy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> items = [
  {
    'name': 'onion',
    'image': Images.onion,
  },
  {
    'name': 'Meat',
    'image': Images.meat,
  },
  {
    'name': 'Bell Pepper',
    'image': Images.bellPeper,
  },
  {
    'name': 'Potato',
    'image': Images.potato,
  },
  {
    'name': 'Tomato',
    'image': Images.tomato,
  },
];
