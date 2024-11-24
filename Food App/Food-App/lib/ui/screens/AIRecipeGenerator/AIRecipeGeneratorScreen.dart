import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AIRecipeGeneratorScreen extends StatefulWidget {
  @override
  State<AIRecipeGeneratorScreen> createState() =>
      _AIRecipeGeneratorScreenState();
}

class _AIRecipeGeneratorScreenState extends State<AIRecipeGeneratorScreen> {
  String? selectedValue;

  List<String> items = ['Drink', 'Desert', 'Milk Shake', 'Misxture'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///
            /// App Bar
            ///
            _appBar(),
            SizedBox(
              height: 20.h,
            ),

            ///
            /// Select Category
            ///

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Select Category (i.e, Food or Drink)",
                textAlign: TextAlign.start,
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
            ///  GENERATE Recipes
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MealgGenerateRecipe()));
                    },
                    child: Text("GENERATE Recipes",
                        style: style14B.copyWith(
                            color: PrimaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: PrimaryColor,
                            decorationThickness: 3,
                            wordSpacing: 2)),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: PrimaryColor,
                  ),
                ],
              ),
            ),

            _generateRecip(),

            ///
            /// Text
            ///
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  "Flavor Strength",
                  style: style14B,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/images/screen.png"),
            ),
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

_generateRecip() {
  return Row(
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///
                /// IMAGE Taste
                ///
                Image.asset(
                  Images.taste,
                  height: 51.h,
                  width: 51.w,
                ),

                ///
                /// Text
                ///
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text(
                    "Taste",
                    style: style14B,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: PrimaryColor, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      Images.orange_juice,
                      scale: 5,
                    ),
                    Text(
                      "Orange",
                      style: style12B,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: [
                    Image.asset(
                      Images.juice2,
                      scale: 5,
                    ),
                    Text(
                      "Mango",
                      style: style12B,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: [
                    Image.asset(
                      Images.glasswater,
                      scale: 8,
                    ),
                    Text(
                      "Water",
                      style: style12B,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),

      ///
      /// Image
      ///
      Expanded(
          child: Image.asset(
        Images.AI_RECIP,
        scale: 2,
      )),

      ///
      /// right side data
      ///
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              ///
              /// Text
              ///
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  "Nutrition",
                  style: style14B,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 68.w,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: PrimaryColor.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  children: [
                    Text(
                      "Sodium 10mg",
                      style: style10B,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Potassium 64mg (2%)",
                      style: style10B,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      " Carbohydrates 16g (5%)",
                      style: style10B,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Dietary Fiber 1g (4%)",
                      style: style10B,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Sugars 13g",
                      style: style10B,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Calories 60 Kcal",
                      style: style10B,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              Container(
                width: 68.w,
                height: 68.h,
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/lemon.png",
                          scale: 5,
                        ),
                        Text(
                          "Lemon",
                          style: style12B,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 68.w,
                height: 68.h,
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.orange,
                      scale: 4,
                    ),
                    Text(
                      "Orange",
                      style: style12B,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Alignment.center,
                width: 68.w,
                height: 68.h,
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.stobery,
                      scale: 5,
                    ),
                    Text(
                      "Strawbery",
                      style: style12B,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}

class MealgGenerateRecipe extends StatefulWidget {
  const MealgGenerateRecipe({super.key});

  @override
  State<MealgGenerateRecipe> createState() => _MealgGenerateRecipeState();
}

class _MealgGenerateRecipeState extends State<MealgGenerateRecipe>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      Container(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TabBar(
                                                controller: _tabController,
                                                labelColor: PrimaryColor,
                                                indicatorColor:
                                                    Colors.yellow.shade700,
                                                tabs: const [
                                                  Tab(text: 'Recip'),
                                                  Tab(text: 'Direction'),
                                                  Tab(text: 'Comments'),
                                                ],
                                              ),
                                              Container(
                                                height: 500.h,
                                                child: TabBarView(
                                                  controller: _tabController,
                                                  children: [
                                                    Center(
                                                        child: _recip(context)),
                                                    Center(
                                                        child: _directions()),
                                                    Center(child: _comments()),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )))
        ]),
      ),
    );
  }
}

_recip(context) {
  return Container(
    decoration: BoxDecoration(),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.8,
          child: AnimationLimiter(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  Images.fEggs,
                                  height: 90,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        "Egg",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Quantity::",
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
                              Image.asset(
                                Images.edit_icon,
                                scale: 5,
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
        )
      ],
    ),
  );
}

_comments() {
  return Container(
    decoration: BoxDecoration(),
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: gradient2,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Images.avatraImage,
                              height: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Clara . 1h ago",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Transform.rotate(
                          angle: 3.14 / 2,
                          child: Image.asset(
                            Images.threeDots,
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Space between title and content
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "I made a recipe for my kid on his birthday,\nusing this product.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up_off_alt,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              Text("13"),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            Images.chatMessage,
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("4"),
                        ],
                      ),
                    ), // Space at the bottom
                    Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Images.avatraImage,
                              height: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Clara . 1h ago",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Transform.rotate(
                          angle: 3.14 / 2,
                          child: Image.asset(
                            Images.threeDots,
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Space between title and content
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "I made a recipe for my kid on his birthday,\nusing this product.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up_off_alt,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              Text("13"),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            Images.chatMessage,
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("4"),
                        ],
                      ),
                    ), // Space at the bottom
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: PrimaryColor,
              child: CircleAvatar(
                radius: 20.sp,
                backgroundImage: AssetImage(
                  Images.homeIcon,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              // Use Expanded to fill remaining space
              child: Container(
                height: 45,
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Comments..',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: primaryColorWithOpacity,
                child: CircleAvatar(
                  radius: 12.sp,
                  backgroundImage: AssetImage(
                    Images.sendIcon,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

_directions() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: PrimaryColor, borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            Images.edit,
            scale: 2,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Step:1",
          style: style16B.copyWith(color: whiteColor),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Preheat oven to 300 degrees F (150 degrees C). Lightly grease an 8-inch pie plate.",
          style: style14B.copyWith(color: blackColor),
        ),
        Text(
          "Preheat oven to 300 degrees F (150 degrees C). Lightly grease an 8-inch pie plate.",
          style: style14B.copyWith(color: blackColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Step:2",
          style: style16B.copyWith(color: whiteColor),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Sift together the flour, cocoa powder, and salt; set aside.Stir the eggs into the sugar until smooth. Add the flour mixture, and stir just until combined. Pour in the vanilla extract and butter; stir until well combined. Pour into prepared pie plate.",
          style: style14B.copyWith(color: blackColor),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Step:3",
          style: style16B.copyWith(color: whiteColor),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Bake on the lower rack of the preheated oven for 35 minutes, or until the center has slightly set. Allow cake to cool for 1 hour in the pie plate. Serve warm, or refrigerate overnight and serve cold.",
          style: style14B.copyWith(color: blackColor),
        ),
      ],
    ),
  );
}
