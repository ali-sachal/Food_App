import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/screens/meal_planner/meal_recipe.dart';

class MealPlannerScreen extends StatelessWidget {
  const MealPlannerScreen({super.key});
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
            padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
            child: SingleChildScrollView(
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
                        "    Meal Planner",
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
                    Images.mealPlanner,
                  ),
                  const SizedBox(height: 20),

                  /// Donation Inventory >>>
                  donationInventory(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Donation Inventory >>>
donationInventory(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          "   Set Nutrition Intake",
          style: TextStyle().s(14).w(6).cl(PrimaryColor),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Protein ",
                      style: TextStyle().s(11).w(6),
                    ),
                    Image.asset(
                      Images.edit,
                      height: 15,
                    )
                  ],
                ),
                SizedBox(height: 5),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 7.0,
                  percent: 0.8,
                  center: Text("100 g"),
                  progressColor: PrimaryColor,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Calcium ",
                      style: TextStyle().s(11).w(6),
                    ),
                    Image.asset(
                      Images.edit,
                      height: 15,
                    )
                  ],
                ),
                SizedBox(height: 5),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 7.0,
                  percent: 0.8,
                  center: Text("100 g"),
                  progressColor: PrimaryColor,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Fat ",
                      style: TextStyle().s(11).w(6),
                    ),
                    Image.asset(
                      Images.edit,
                      height: 15,
                    )
                  ],
                ),
                SizedBox(height: 5),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 7.0,
                  percent: 0.8,
                  center: Text("100 g"),
                  progressColor: PrimaryColor,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Carbs ",
                      style: TextStyle().s(11).w(6),
                    ),
                    Image.asset(
                      Images.edit,
                      height: 15,
                    )
                  ],
                ),
                SizedBox(height: 5),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 7.0,
                  percent: 0.8,
                  center: Text("100 g"),
                  progressColor: PrimaryColor,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Carbohydrates ",
                      style: TextStyle().s(11).w(6),
                    ),
                    Image.asset(
                      Images.edit,
                      height: 15,
                    )
                  ],
                ),
                SizedBox(height: 5),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 7.0,
                  percent: 0.8,
                  center: Text("100 g"),
                  progressColor: PrimaryColor,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Potassium ",
                      style: TextStyle().s(11).w(6),
                    ),
                    Image.asset(
                      Images.edit,
                      height: 15,
                    )
                  ],
                ),
                SizedBox(height: 5),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 7.0,
                  percent: 0.8,
                  center: Text("100 g"),
                  progressColor: PrimaryColor,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  Total Calories ",
                    style: TextStyle().s(11).w(6),
                  ),
                  Image.asset(
                    Images.edit,
                    height: 15,
                  )
                ],
              ),
              SizedBox(height: 5),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 10.0,
                percent: 0.8,
                center: Text("80 Kcal"),
                progressColor: PrimaryColor,
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          "   Meal Categories",
          style: TextStyle().s(14).w(6).cl(PrimaryColor),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.8,
          child: AnimationLimiter(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final item = items[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //         const ()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
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
                              Image.asset(
                                item['image']!,
                                height: 90,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        item['name']!,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Recommended:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "505-707 kcal",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1, color: PrimaryColor)),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: PrimaryColor,
                                  )),
                              SizedBox(width: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child: Text(
                "Generate Recipe",
                style: TextStyle().s(12).cl(Colors.white).w(6),
              )),
            ),
          ),
        ),
        SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MealRecipe()));
          },
          child: Image.asset(
            Images.kladdkaka,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text(
              "   kladdkaka",
              style: TextStyle().s(13).w(6),
            ),
            Spacer(),
            Icon(
              Icons.star,
              color: PrimaryColor,
              size: 15,
            ),
            Text(
              " 4.9 (1k+ Reviews)",
              style: TextStyle().s(11).w(6).cl(Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 15),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.1,
          child: AnimationLimiter(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: ingredient.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final item = ingredient[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //         const ()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
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
                              Image.asset(
                                item['image']!,
                                height: 90,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        item['name']!,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Quantity:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      item['quantity']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Image.asset(
                                Images.edit,
                                height: 25,
                              ),
                              SizedBox(width: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(right: 2),
                decoration: BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Icon(
                  Icons.add,
                  size: 22,
                  color: Colors.white,
                )),
            Container(
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                "Add more to shopping list",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: PrimaryColor,
            prefixIcon: Icon(
              Icons.search,
              color: whiteColor,
            ),
            hintText: 'Search Ingredients, Recipes...',
            hintStyle: TextStyle(fontSize: 12, color: whiteColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "   Recipes",
                  style: TextStyle().s(14).w(6).cl(PrimaryColor),
                ),
                Text(" (based on your information)",
                    style: TextStyle().s(10).w(4)),
              ],
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
                  return DonationItems();
                },
                itemCount: 2,
              );
            },
          ),
        ),
        const SizedBox(height: 25),
        Text(
          "Nutritional Value",
          style: TextStyle().w(6).s(14),
        ),
        const SizedBox(height: 15),
        Column(
          children: [
            nutritionalValue(name: "Total Fat", percentage: "19%", kg: "15g"),
            nutritionalValue(
                name: "Saturated Fat", percentage: "42%", kg: "8g"),
            nutritionalValue(
                name: "Cholesterol", percentage: "10%", kg: "234mg"),
            nutritionalValue(name: "Sodium", percentage: "17%", kg: "48g"),
            nutritionalValue(
                name: "Total Carbohydrate", percentage: "0%", kg: "4g"),
            nutritionalValue(name: "Dietary Fiber", percentage: "6%", kg: "2g"),
            nutritionalValue(name: "Protein", percentage: "28%", kg: "83mg"),
            nutritionalValue(name: "Calcium", percentage: "4%", kg: "46mg"),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "    Calories",
                  style: const TextStyle().w(6).s(14),
                ),
                Text(
                  "    340",
                  style: const TextStyle().w(6).s(14),
                ),
                SizedBox(),
                SizedBox(),
              ],
            ),
          ],
        ),
        SizedBox(height: 30.h),
      ],
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

/// DonationItems >>>>
class DonationItems extends StatelessWidget {
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

final List<Map<String, String>> ingredient = [
  {
    'name': 'Flour',
    'quantity': 'Half cup all-purpose flour',
    'image': Images.fFlour,
  },
  {
    'name': 'Cocoa Powder',
    'quantity': '1/4 cup cocoa powder',
    'image': Images.mCocoa,
  },
  {
    'name': 'Salt',
    'quantity': '1 pinch salt',
    'image': Images.mSalt,
  },
  {
    'name': 'Eggs',
    'quantity': '2 Eggs',
    'image': Images.fEggs,
  },
  {
    'name': 'Sugar',
    'quantity': '1 and 1/3 cups white sugar',
    'image': Images.mSugar,
  },
  {
    'name': 'Vanilla',
    'quantity': '1 table spoon vanilla extract',
    'image': Images.mVanilla,
  },
  {
    'name': 'Butter',
    'quantity': 'Half cup butter, melted',
    'image': Images.mButter,
  },
];

final List<Map<String, String>> items = [
  {
    'name': 'breakfast',
    'image': Images.breakfast,
  },
  {
    'name': 'Lunch',
    'image': Images.lunch,
  },
  {
    'name': 'Dinner',
    'image': Images.dinner,
  },
  {
    'name': 'Snack',
    'image': Images.snack,
  },
];

/// Meal Planner >>>>>>
mealPlanner(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      Center(
        child: Text(
          "Meal Planner",
          style: TextStyle().s(15).w(6),
        ),
      ),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Daily Intake',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                const Text(
                  '769/1968 kcal   ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 8),
                Image.asset(
                  Images.edit,
                  height: 20,
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 6.0,
                      percent: 0.8,
                      center: Text("85%"),
                      progressColor: PrimaryColor,
                    ),
                    SizedBox(height: 8),
                    const Text(
                      'Carbs',
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
                      radius: 30.0,
                      lineWidth: 6.0,
                      percent: 0.7,
                      center: Text("60%"),
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
                      radius: 30.0,
                      lineWidth: 6.0,
                      percent: 0.6,
                      center: Text("20%"),
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
          ],
        ),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MealPlannerScreen()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                  child: Text(
                "Plan your Meals",
                style: TextStyle().s(12).cl(Colors.white).w(6),
              )),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MealPlannerScreen()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: PrimaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                  child: Text(
                "Show Details",
                style: TextStyle().s(12).cl(PrimaryColor).w(6),
              )),
            ),
          ),
        ],
      ),
      SizedBox(height: 30),
    ],
  );
}