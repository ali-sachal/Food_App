import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

class FoodTrackingList extends StatelessWidget {
  const FoodTrackingList({super.key});
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
                        "    Food Tracking",
                        style: const TextStyle().w(6).s(13),
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
                    Images.foodTrackingBg,
                    // height: 150,
                  ),
                  const SizedBox(height: 20),

                  /// foodTracking Inventory >>>
                  foodTrackingInventory(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// foodTracking Inventory >>>
foodTrackingInventory(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "   Meal Log",
            style: const TextStyle().s(14).w(6).cl(PrimaryColor),
          ),
          const Icon(Icons.more_vert_rounded)
        ],
      ),
      const SizedBox(height: 15),
      Container(
        height: MediaQuery.of(context).size.height / 2.2,
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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: AnimationLimiter(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        item['image']!,
                                        height: 90,
                                      ),
                                      const SizedBox(width: 15),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    item['name']!,
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        color: whiteColor,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    item['type']!,
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: whiteColor),
                                                  ),
                                                  Text(
                                                    item['cal']!,
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: whiteColor),
                                                  ),
                                                  const SizedBox(),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        Images.edit,
                                        height: 25,
                                      ),
                                      const SizedBox(width: 12),
                                    ],
                                  ),
                                  Container(
                                    height: 4,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  )
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: whiteColor),
                        borderRadius: BorderRadius.circular(3)),
                    child: Text(
                      "Show more",
                      style: const TextStyle().s(12).cl(whiteColor),
                    )),
                const SizedBox(width: 5),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(3)),
                    child: Text(
                      "Add More Meals",
                      style: const TextStyle().cl(Colors.white).s(12),
                    )),
              ],
            )
          ],
        ),
      ),
      const SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "   Shopping List",
            style: const TextStyle().s(14).w(6).cl(PrimaryColor),
          ),
          const Icon(Icons.more_vert_rounded)
        ],
      ),
      const SizedBox(height: 15),
      Container(
        height: MediaQuery.of(context).size.height / 2.2,
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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: AnimationLimiter(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: shoppingItems.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final item = shoppingItems[index];
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        item['image']!,
                                        height: 70,
                                      ),
                                      const SizedBox(width: 15),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    item['name']!,
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        color: whiteColor,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    "Quantity: ${item['quantity'] ?? ''} cups",
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: whiteColor),
                                                  ),
                                                  const SizedBox(),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        Images.edit,
                                        height: 25,
                                      ),
                                      const SizedBox(width: 12),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height: 4,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  )
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: whiteColor),
                        borderRadius: BorderRadius.circular(3)),
                    child: Text(
                      "Show more",
                      style: const TextStyle().s(12).cl(whiteColor),
                    )),
                const SizedBox(width: 5),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(3)),
                    child: Text(
                      "Add More Ingredients",
                      style: const TextStyle().cl(Colors.white).s(12),
                    )),
              ],
            )
          ],
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

final List<Map<String, String>> items = [
  {
    'name': 'Steak',
    'image': Images.steak,
    'type': 'Breakfast',
    'cal': '271 Cal',
  },
  {
    'name': 'Egg',
    'image': Images.egg,
    'type': 'Lunch',
    'cal': '148 Cal',
  },
  {
    'name': 'Steak',
    'image': Images.steak,
    'type': 'Breakfast',
    'cal': '271 Cal',
  },
];

final List<Map<String, String>> shoppingItems = [
  {'name': 'Milk', 'image': Images.fMilk, 'quantity': '1¼'},
  {'name': 'Flour', 'image': Images.fFlour, 'quantity': '¾'},
  {'name': 'Eggs', 'image': Images.fEggs, 'quantity': '3'},
];

foodTracking(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FoodTrackingList()));
    },
    child: Container(
      height: 300,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.foodTrackingBg), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Write what you eat.',
            style: const TextStyle().s(20).w(3).cl(blackColor),
          ),
          Text(
            'Food\nTracking',
            style: const TextStyle().s(30).w(6).cl(blackColor),
          ),

          CustomButton(
            text: 'Show Tracking Records',
            onPressed: () {},
          ),

          // ),
        ],
      ),
    ),
  );
}
