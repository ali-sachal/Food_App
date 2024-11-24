import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/screens/recipt_generating/favourite_flavour.dart';
import 'package:security_gdpr/ui/screens/meal_planner/meal_planner.dart';
import 'package:security_gdpr/ui/screens/meal_planner/meal_recipe.dart';
import 'package:security_gdpr/ui/screens/recipt_generating/choose_flavour_screen.dart';

class ReciptGenerating extends StatefulWidget {
  @override
  State<ReciptGenerating> createState() => _ReciptGeneratingState();
}

class _ReciptGeneratingState extends State<ReciptGenerating> {
  // Initial selected value
  String? selectedValue;

  String? SelectRecipe;

  // List of options for dropdown
  List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  List<String> itemsSelectRecipe = ['Sugar', 'Desert', 'Sugar-free'];
  List<String> FruitsandBerriesList = [
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil
  ];

  List<String> popularTasteList = [
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
  ];

  List<String> popularTasteListName = [
    'PLUM',
    'QUINCE',
    'PEAR',
    'CELERIAC',
    'GRAPE',
  ];

  List<String> FruitsandBerriesListName = [
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Apple',
    'Banana',
  ];

  List<String> VegetableImageList = [
    Images.tomato,
    Images.carrot,
    Images.broccoli,
    Images.basil,
    Images.broccoli,
    Images.potato
  ];
  List<String> VegetableNameList = [
    'Tomato',
    'Carrot',
    'Bell Pepper',
    'Broccoli',
    'Carrot',
    'Tomato',
    'Broccoli',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appBar(),
            SizedBox(
              height: 10.h,
            ),

            ///
            /// Select Category
            ///

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Select Category (i.e, Food or Drink)",
                style: style14B,
              ),
            ),

            ///
            /// Select Category Function
            ///
            _selectCategory(
              selectedValue: selectedValue,
              items: items,
              onPressed: (String? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
            ),

            ///
            /// My Community
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "My Community",
                    style: style14B.copyWith(color: PrimaryColor),
                  ),
                  showAll(onPressed: () {}, text: 'Show All'),
                ],
              ),
            ),

            ///
            /// ListView
            ///
            _myCommunity(),

            ///
            /// show All
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "My Community",
                    style: style14B.copyWith(color: PrimaryColor),
                  ),
                  showAll(onPressed: () {}, text: 'Show All'),
                ],
              ),
            ),

            ///
            /// Inventory screen
            ///
            _reciptImageStack(),

            ///
            /// show All
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Personal Recommendations",
                    style: style14B.copyWith(color: PrimaryColor),
                  ),
                  showAll(onPressed: () {}, text: 'Show All'),
                ],
              ),
            ),

            ///
            ///  Personal Recomendations
            ///
            Container(
              height: 280.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _personalRecomendations();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "GENERATE Recipes",
                    style: style14B.copyWith(color: PrimaryColor),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                " Select Taste/Flavor",
                style: style16B,
              ),
            ),

            ///
            ///  Select Different Tastes
            ///
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavouriteFlovour()));
                });
                print("sdn fs");
              },
              child: Container(
                margin: EdgeInsets.all(20),
                height: 142.h,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: blackColor.withOpacity(0.60),
                    image: DecorationImage(
                        image: AssetImage(Images.donate1), fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Select Different Tastes",
                      textAlign: TextAlign.center,
                      style: style16B.copyWith(color: whiteColor),
                    ),
                    Text(
                      "You can select up to 2 flavors and combine them",
                      textAlign: TextAlign.center,
                      style: style16B.copyWith(color: whiteColor),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: authFieldDecoration.copyWith(
                    hintText: "Search",
                    hintStyle: style14N.copyWith(color: blackColor),
                    fillColor: PrimaryColor,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20.sp,
                      color: blackColor,
                    )),
              ),
            ),

            ///
            /// Fruits
            ///

            _fruitsVegitables(
                context: context,
                FruitsandBerriesList: FruitsandBerriesList,
                text: 'Fruits and Berries',
                title: FruitsandBerriesListName),

            ///
            /// Vegitables
            ///
            _fruitsVegitables(
                context: context,
                FruitsandBerriesList: VegetableImageList,
                text: 'Vegetables',
                title: VegetableNameList),

            ///
            /// Spices and Herbs
            ///
            _fruitsVegitables(
                context: context,
                FruitsandBerriesList: VegetableImageList,
                text: 'Spices and Herbs',
                title: VegetableNameList),

            ///
            /// Select Taste
            ///
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Select Taste", style: style16B),
              ),
            ),
            _selectTaste(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavouriteFlovour()));
                });
                print("123456");
              },
            ),

            ///
            /// Popular Taste
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Popular Taste", style: style16B),
            ),

            ///
            /// Popular Taste
            ///

            _popularTaste(),

            /// Recipe Sugar-Free, Desert,
            ///
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0, top: 0.0, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Recipe  ", style: style16B),
                  Text("(Sugar-Free, Desert, etc)", style: style14N),
                ],
              ),
            ),

            ///
            /// SelectCategory Recipe Sugar-Free, Desert,
            ///
            _selectCategory(
                selectedValue: SelectRecipe,
                onPressed: (val) {
                  setState(() {
                    SelectRecipe = val;
                  });
                },
                items: itemsSelectRecipe),

            ///
            /// Set Nutrition Intake
            ///
            ///
            donationInventory(context),
          ],
        ),
      ),
    );
  }
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
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: authFieldDecoration.copyWith(
                    hintText: "Search",
                    hintStyle: style14N.copyWith(color: blackColor),
                    fillColor: whiteColor,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20.sp,
                      color: blackColor,
                    )),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(width: 1.0, color: PrimaryColor)),
              child: Image.asset(
                Images.filter,
                scale: 3,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

_selectCategory({selectedValue, onPressed, items}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
          color: greyColor.withOpacity(0.10),
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          focusColor: Color(0XFFF888888),
          hint: Text('Select an option'),
          value: selectedValue,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          padding: EdgeInsets.all(10),
          isExpanded: true,
          onChanged: onPressed,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    ),
  );
}

_myCommunity() {
  return Container(
    height: 60.h,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                    image: AssetImage(Images.cMeal), fit: BoxFit.cover)),
            child: Text(
              "Breakfast",
              style: style14B.copyWith(color: whiteColor),
            ),
          );
        }),
  );
}

_reciptImageStack() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          // alignment: Alignment.bottomCenter,
          children: [
            Container(
              child: Image.asset(
                Images.donate1,
                // height: 15,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 220.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: PrimaryColor,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "5.0 (1k+ Reviews)",
                              style: style14N.copyWith(color: blackColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Meatballs with Mashed Potatoes',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              Images.watch,
                              scale: 3,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text('45 Minutes . Easy',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: greyColor,
                                  fontWeight: FontWeight.w700,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

_personalRecomendations() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 180.w,
              height: 200,
              child: Image.asset(
                Images.donate1,
              ),
            ),
            Container(
              width: 180.w,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pytt i Panna',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.watch,
                          scale: 3,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text('35 Minutes . Easy',
                            style: TextStyle(
                              fontSize: 10,
                              color: greyColor,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

_fruitsVegitables({
  required List FruitsandBerriesList,
  required String text,
  required List title,
  required BuildContext context,
}) {
  return Column(
    children: [
      ///
      /// Fruits and Berries
      ///
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("$text", style: style14B),
            showAll(onPressed: () {}, text: 'Show All'),
          ],
        ),
      ),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: FruitsandBerriesList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 54.h,
                    width: 54.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            Color.fromARGB(248, 255, 30, 0).withOpacity(0.20)),
                    child: Image.asset(
                      FruitsandBerriesList[index],
                      scale: 5,
                    )),
                Text(
                  title[index],
                  style: style12N,
                ),
                Text(
                  "See Details",
                  style: style12B.copyWith(
                    color: Color(0XFFFFC520),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0XFFFFC520),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10.w,
            );
          },
        ),
      ),
    ],
  );
}

_selectTaste({required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Image.asset(
            Images.add_to_taste,
            scale: 5,
          ),
        ),
        Column(
          children: [
            Text("Add Taste", style: style12B.copyWith(color: whiteColor)),
            Container(
              // width: 62.w,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.transparent,
                  border: Border.all(width: 3.0, color: PrimaryColor)),
              child: Text(
                "Browse Files",
                style: style12B.copyWith(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

_popularTaste() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      height: 140.h,
      child: ListView.separated(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 30.h,
                width: 68.w,
                decoration: BoxDecoration(
                  color: Color(0XFFFFC989),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                ),
                child: Text(
                  "dr",
                  style: style14B.copyWith(color: whiteColor),
                ),
              ),
              Stack(alignment: Alignment.bottomRight, children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    height: 69.h,
                    // width: 68.w,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border(
                        top: BorderSide(
                            width: 3,
                            color: greyColor.withOpacity(
                                0.90)), // Top border with different width
                        left: BorderSide(width: 3, color: PrimaryColor),
                        right: BorderSide(width: 3, color: PrimaryColor),
                        bottom: BorderSide(width: 3, color: PrimaryColor),
                      ),
                    ),
                    child: Image.asset(
                      Images.apple,
                      scale: 4,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: PrimaryColor,
                  radius: 15.r,
                  child: Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                )
              ])
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20.w,
          );
        },
      ),
    ),
  );
}

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
