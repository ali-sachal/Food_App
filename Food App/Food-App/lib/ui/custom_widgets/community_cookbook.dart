import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/custom_widgets/community_creation.dart';
import 'package:security_gdpr/ui/screens/community_cookbook/community_detail.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/search_field.dart';

communityCookbook(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 30),
      Center(
        child: Text(
          "   Community Cookbook",
          style: TextStyle().s(15).w(6),
        ),
      ),
      SizedBox(height: 25),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryColor,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xfff777777),
          ),
          hintText: 'Search Recipes, Restaurants...',
          hintStyle: TextStyle(color: Color(0xfff777777)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(height: 25),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "    My Community",
            style: TextStyle().s(18).w(7).cl(Colors.black),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CommunityDetail()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
              decoration: BoxDecoration(
                  color: PrimaryColor,
                  //border: Border.all(width: 2, color: PrimaryColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                "Show All",
                style: TextStyle().w(6).s(11).cl(Colors.white),
              )),
            ),
          ),
        ],
      ),
      SizedBox(height: 15),
      SizedBox(
        height: MediaQuery.of(context).size.height / 4.7,
        child: AnimationLimiter(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            item['image']!,
                            height: 120,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "    ${item['title']!}",
                            style: const TextStyle(
                              fontSize: 10,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "    Featured Communities",
            style: TextStyle().s(15).w(6).cl(PrimaryColor),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CommunityDetail()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: PrimaryColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                "Show All",
                style: TextStyle().w(6).s(11).cl(PrimaryColor),
              )),
            ),
          ),
        ],
      ),
      SizedBox(height: 15),
      SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        child: AnimationLimiter(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CommunityDetail()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              Images.captainCook,
                              height: 250,
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "   Captain Cooks",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  "     2.1k Members",
                                  style: TextStyle(
                                    fontSize: 6,
                                  ),
                                ),
                                Text(
                                  "   432 Recipes",
                                  style: TextStyle(
                                    fontSize: 6,
                                  ),
                                ),
                              ],
                            ),
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
      SizedBox(height: 10),
      Center(
        child: Text(
          "Looking to create a New community?",
          style: TextStyle().s(12).w(6),
        ),
      ),
      SizedBox(height: 20),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CommunityCreation()));
        },
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              color: PrimaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
                child: Text(
              "Create New Community",
              style: TextStyle().s(12).cl(Colors.white).w(6),
            )),
          ),
        ),
      ),
      SizedBox(height: 30),

      ///
      ///AI Part
      ///
      Center(
        child: Text(
          "Real time Cooking Voice Assistant",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Image.asset(
          "assets/images/ai.png",
          width: 209,
          height: 165,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Image.asset("assets/images/voice.png"),
      ),
      SizedBox(
        height: 50,
      ),
    ],
  );
}

final List<Map<String, String>> items = [
  {'title': 'Sugar free meals', 'image': Images.cMeal, 'no': '53'},
  {'title': '30 minutes food', 'image': Images.cFood, 'no': '87'},
  {'title': 'Sugar free meals', 'image': Images.cMeal, 'no': '53'},
];
