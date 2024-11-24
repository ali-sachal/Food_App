// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_button1.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/custom_widgets/personalized_recipe.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/cooking_trends.dart';

class VirtualInventory extends StatelessWidget {
  const VirtualInventory({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.homeIcon,
                      height: 40,
                    ),
                    const Spacer(),
                    Image.asset(
                      Images.homeScan,
                      height: 30,
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      Images.homeMenu,
                      height: 40,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Image.asset(
                  Images.virtualInventory,
                  // height: 150,
                ),

                /// Inventory >>>
                inventory(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Inventory >>>
inventory(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "   Inventory",
            style: style16B,
          ),
          showAll(onPressed: () {}, text: "Show All"),
        ],
      ),
      SizedBox(height: 15),
      SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        child: AnimationLimiter(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Container(
                      height: 100.h,
                      width: MediaQuery.of(context).size.width,
                      // padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(
                          top: 5, bottom: 10, right: 5, left: 5),
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r)),
                            height: 100.h,
                            child: Image.asset(
                              Images.burgerKing,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Burger King',
                                        style: TextStyle().s(14).w(6),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Quantity:",
                                            style: style14N.copyWith(
                                                color: whiteColor),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text("4.2")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Expiry Date: 14-05-2024',
                                  style: style14B.copyWith(
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                              ],
                            ),
                          ),

                          // index == 0 || index == 2
                          //     ? Container(
                          //         width: 60,
                          //         height: 30,
                          //         decoration: BoxDecoration(
                          //           color: PrimaryColor,
                          //           borderRadius: const BorderRadius.only(
                          //             topRight: Radius.circular(15.0),
                          //             bottomLeft: Radius.circular(15.0),
                          //           ),
                          //         ),
                          //         child: Center(
                          //             child: Text(
                          //           "New",
                          //           style: TextStyle().w(6).cl(Colors.white),
                          //         )),
                          //       )
                          //     : const SizedBox()
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
      SizedBox(height: 15),
      Center(
        child: CustomButton(
            text: "View Recipes for Available Ingredients", onPressed: () {}),
      ),
      SizedBox(height: 15),
      //
      // Recipe (Based on available ingredients)
      //

      _reciptImageStack(),

      ///
      /// Leftovers
      ///
      Text(
        "Leftovers",
        style: style16B.copyWith(color: PrimaryColor),
      ),
      SizedBox(
        height: 10.h,
      ),

      ///
      /// Leftovers
      ///
      _Leftovers(),

      ///
      /// Leftovers
      ///
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: boxDecoration,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton1(text: "Onions", onPressed: () {}),
                CustomButton1(
                  text: "Cucumber",
                  onPressed: () {},
                  textcolor: greyColor,
                  boxcolor: whiteColor,
                ),
                CustomButton1(
                  text: "Milk and Yogurt",
                  onPressed: () {},
                  textcolor: greyColor,
                  boxcolor: whiteColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton1(
                  text: "Lady Fingers",
                  onPressed: () {},
                  textcolor: greyColor,
                  boxcolor: whiteColor,
                ),
                CustomButton1(text: "Meat", onPressed: () {}),
                CustomButton1(text: "Bell Peppers", onPressed: () {}),
                CustomButton1(
                  text: "Carrots",
                  onPressed: () {},
                  textcolor: greyColor,
                  boxcolor: whiteColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton1(
                  text: "Potato",
                  onPressed: () {},
                  textcolor: greyColor,
                  boxcolor: whiteColor,
                ),
                CustomButton1(text: "Flour", onPressed: () {}),
                CustomButton1(
                  text: "Tomato",
                  onPressed: () {},
                  textcolor: greyColor,
                  boxcolor: whiteColor,
                ),
              ],
            )
          ],
        ),
      ),

      _reciptImageStack(),

      // SizedBox(height: 20),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Container(
      //       padding: EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //           border: Border.all(width: 1, color: Colors.grey),
      //           shape: BoxShape.circle),
      //       child: Image.asset(
      //         Images.scan,
      //         height: 15,
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.symmetric(horizontal: 5),
      //       padding: EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //           border: Border.all(width: 1, color: Colors.grey),
      //           shape: BoxShape.circle),
      //       child: Image.asset(
      //         Images.refresh,
      //         height: 15,
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      //       decoration: BoxDecoration(
      //           color: PrimaryColor, borderRadius: BorderRadius.circular(8)),
      //       child: Center(
      //           child: Text(
      //         "Receipt Generation",
      //         style: TextStyle().w(6).cl(Colors.white),
      //       )),
      //     )
      //   ],
      // ),
      // SizedBox(height: 20),
      // Image.asset(
      //   Images.inventory2,
      //   // height: 15,
      // ),
      // SizedBox(height: 15),
      // Center(
      //   child: Text(
      //     "Some Result for Scan",
      //     style: TextStyle().s(15),
      //   ),
      // ),
      // SizedBox(height: 15),
      // Container(
      //   height: MediaQuery.of(context).size.height / 1.7,
      //   child: LayoutBuilder(
      //     builder: (context, constraints) {
      //       var crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
      //       return GridView.builder(
      //         padding: EdgeInsets.zero,
      //         physics: NeverScrollableScrollPhysics(),
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: crossAxisCount,
      //           crossAxisSpacing: 8.0,
      //           mainAxisSpacing: 8.0,
      //           childAspectRatio: 2 / 2.5,
      //         ),
      //         itemBuilder: (context, index) {
      //           return RecieptItems();
      //         },
      //         itemCount: 4,
      //       );
      //     },
      //   ),
      // ),
      // SizedBox(height: 10),
      // Container(
      //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12),
      //     border: Border.all(width: 2, color: PrimaryColor),
      //   ),
      //   child: Column(
      //     children: [
      //       Center(
      //         child: Text(
      //           "Need Better Guidance?",
      //           style: TextStyle().s(14),
      //         ),
      //       ),
      //       SizedBox(height: 15),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Column(
      //             children: [
      //               Image.asset(
      //                 Images.voiceAssist,
      //                 height: 35,
      //               ),
      //               SizedBox(height: 5),
      //               Text(
      //                 textAlign: TextAlign.center,
      //                 "Real time Cooking\nVoice Assistant",
      //                 style: TextStyle().s(14),
      //               ),
      //             ],
      //           ),
      //           Container(
      //             height: 70,
      //             width: 2,
      //             color: PrimaryColor,
      //           ),
      //           Column(
      //             children: [
      //               Image.asset(
      //                 Images.guidance,
      //                 height: 35,
      //               ),
      //               SizedBox(height: 5),
      //               Text(
      //                 textAlign: TextAlign.center,
      //                 "Hands-Free Cooking\nGuidance",
      //                 style: TextStyle().s(14),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      // SizedBox(height: 25),
    ],
  );
}

/// RecieptItems >>>>
class RecieptItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                Images.inventory3,
                // height: 15,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              'Golden Restaurant',
              style: TextStyle(
                fontSize: 8,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Pakistan',
              style: TextStyle(
                fontSize: 8,
                color: Color(0XFF777777),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.',
              style: TextStyle(
                fontSize: 6,
                color: Color(0XFF777777),
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "4.2",
                      style: TextStyle().s(6).cl(
                            Color(0XFF777777),
                          ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.star,
                      color: PrimaryColor,
                      size: 10,
                    ),
                  ],
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(Icons.timer_sharp, size: 10),
                Text(
                  '  25-35 mins ',
                  style: TextStyle().s(6).w(5).cl(Color(0XFF777777)),
                ),
                SizedBox(width: 3),
                Text(
                  'Free Delivery',
                  style: TextStyle().s(6).w(5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

virtualInventory(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const VirtualInventory()));
    },
    child: Image.asset(
      Images.virtualInventory,
      // height: 150,
    ),
  );
}

_reciptImageStack() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recipe (Based on available ingredients)",
              style: style12N,
            ),
            showAll(onPressed: () {}, text: "Show All"),
          ],
        ),
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
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/popular.png",
                              scale: 3,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Popular",
                              style: style14B.copyWith(color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                        decoration: BoxDecoration(
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/save.png",
                              scale: 4.5,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "1.6K ",
                              style: style14B.copyWith(color: whiteColor),
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
                        Text('Savory Beef and Vegetable Strew',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: PrimaryColor,
                            ),
                            Text('4.3 (1k+ Reviews)',
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
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

_Leftovers() {
  return Row(
    children: [
      Container(
        height: 49.h,
        width: 49.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
        child: Image.asset(
          Images.cFood,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        width: 10.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Remaining Inventory",
            style: style16B,
          ),
          Text(
            "5/10 Ingredients",
            style: style16N,
          ),
        ],
      ),
    ],
  );
}
