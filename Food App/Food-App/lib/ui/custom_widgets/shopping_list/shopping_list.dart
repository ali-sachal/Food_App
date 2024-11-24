import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/screens/evionmental_imapct/envionmental_impact_scoring.dart';

shoppingList(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Images.homeIcon,
                    height: 40,
                  ),
                  Text(
                    "Shopping List",
                    style: TextStyle().s(14).w(6),
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

              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: PrimaryColor,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                child: AnimationLimiter(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
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
                              // padding: EdgeInsets.all(12),
                              margin: EdgeInsets.only(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    Images.shoppingList,
                                    height: 90,
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Pancake',
                                            style: TextStyle().s(16).w(6),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pancake:  ',
                                              style: TextStyle()
                                                  .s(12)
                                                  .w(5)
                                                  .cl(Color(0XFF777777)),
                                            ),
                                            Text(
                                              'Milk, Flour, Butter, Eggs,\nSugar, and Salt.',
                                              style: TextStyle().s(11).w(5),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: PrimaryColor,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text("4.2")
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
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
              SizedBox(height: 10),

              /// Items to add ...>>>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items to add",
                    style: TextStyle().s(14).w(6).cl(PrimaryColor),
                  ),
                  Icon(Icons.more_vert_rounded)
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients',
                    style: TextStyle().s(10).w(5).cl(Color(0xFF777777)),
                  ),
                  Text(
                    'Name   ',
                    style: TextStyle().s(10).w(5).cl(Color(0xFF777777)),
                  ),
                  Text(
                    'Quantity',
                    style: TextStyle().s(10).w(5).cl(Color(0xFF777777)),
                  ),
                  SizedBox(),
                  Text(
                    'Market Price',
                    style: TextStyle().s(10).w(5).cl(Color(0xFF777777)),
                  ),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                ],
              ),
              SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: AnimationLimiter(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: EdgeInsets.only(top: 10),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  top: 3, bottom: 10, right: 5, left: 5),
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
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        Images.flour,
                                        height: 70,
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Flour',
                                              style: TextStyle().s(10).w(6),
                                            ),
                                            Text(
                                              '¾ cup',
                                              style: TextStyle().s(10).w(6),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '\$0.50 (Kg) ',
                                                    style:
                                                        TextStyle().s(10).w(6),
                                                  ),
                                                  Text(
                                                    'Compare Prices',
                                                    style: TextStyle()
                                                        .s(10)
                                                        .w(6)
                                                        .cl(PrimaryColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 15),
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
              SizedBox(height: 5),

              Text(
                '  Compare Prices with different market prices to find the lowest price.',
                style: TextStyle().s(9).w(5),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You already have",
                    style: TextStyle().s(14).w(6).cl(PrimaryColor),
                  ),
                  Icon(Icons.more_vert_rounded)
                ],
              ),
              SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: AnimationLimiter(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    padding: EdgeInsets.only(top: 10),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  top: 3, bottom: 10, right: 5, left: 5),
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
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        Images.sugar,
                                        height: 70,
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Sugar',
                                              style: TextStyle().s(10).w(6),
                                            ),
                                            Text(
                                              '1 table spoon',
                                              style: TextStyle().s(10).w(6),
                                            ),
                                            Text(
                                              '\$3.65 (Kg)',
                                              style: TextStyle().s(10).w(6),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20),
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
          ),
        ),
      ),
    ),
  );
}

showShoppingList(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 40.h),
      Center(
        child: Text(
          "Shopping List",
          style: style16B,
        ),
      ),
      SizedBox(height: 20.h),
      Text(
        "suggested by AI",
        style: TextStyle().s(14).w(6),
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Images.shoppingList,
            scale: 5,
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pancake',
                      style: style16B,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: PrimaryColor,
                          size: 18.sp,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "4.2",
                          style: style12B,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients:  ',
                      style: TextStyle().s(12).w(5).cl(PrimaryColor),
                    ),
                    Expanded(
                      child: Text(
                        'Milk, Flour,Eggs, Sugar, and Salt..',
                        style: TextStyle().s(11).w(5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 20.h),
      Align(
        alignment: Alignment.center,
        child: CustomButton(
            text: "Show Shopping List",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      shoppingList(context), // Correctly spelled
                ),
              );
            }),
      ),
      SizedBox(height: 30.h),
    ],
  );
}
