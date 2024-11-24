import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/screens/Meal_screen/meals_screen.dart';
import 'package:security_gdpr/ui/screens/group_training/group_training.dart';

import '../../post_viewing/post_viewing.dart';
import '../../solo_training/solo_training.dart';

communityFeed(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Text(
          "Customizable Recipes",
          style: TextStyle().w(7),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Swedan",
            style: TextStyle().w(7).s(24),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Image.asset(
              "assets/icons/down-arrow.png",
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 5, bottom: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xfffF8F8F8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: PrimaryColor),
              child: Text(
                "Most Recent",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(
              "Trending",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Top Post",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryColor,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xfff777777),
          ),
          hintText: 'Search any Post',
          hintStyle: TextStyle(color: Color(0xfff777777)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Select Country",
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
                      "Country",
                      style: TextStyle(
                        color: Color(0xfff777777),
                      ),
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
                " Select Topic",
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
                    Text("Select Topic"),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      const Text(
        "Select Recipe",
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
              "Search Recipe",
              style: TextStyle(
                color: Color(0xfff777777),
              ),
            ),
            Icon(Icons.arrow_drop_down_rounded)
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Shorts Feed",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: progressColor),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: PrimaryColor),
            child: Center(
                child: Text(
              "Show All",
              style: TextStyle().cl(Colors.white),
            )),
          ),
        ],
      ),
      SizedBox(
        height: 330,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
                width: 150,
                height: 319,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset("assets/images/reel_img.png"),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/like.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "627",
                            style: TextStyle().cl(progressColor).w(7),
                          )
                        ],
                      ),
                    )
                  ],
                ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10,
            );
          },
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Training",
        style: style16B.copyWith(color: blackColor, fontSize: 26),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GroupTraining()));
        },
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                  image: AssetImage("assets/images/training.png"),
                  fit: BoxFit.cover)),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "solo Training",
        style: style16B.copyWith(color: blackColor, fontSize: 26),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SoloTraining()));
        },
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                  image: AssetImage("assets/images/training.png"),
                  fit: BoxFit.cover)),
        ),
      ),
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return masterChefGridView(context);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 4,
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Quiz",
            style: TextStyle().s(16).cl(progressColor).w(7),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryColor,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xfff777777),
          ),
          hintText: 'What do you want to ask or share?',
          hintStyle: TextStyle(color: Color(0xfff777777)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/icons/question.png",
                scale: 4,
              ),
              Text(
                "Questions",
                style: TextStyle().s(14),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/icons/message.png",
                scale: 4,
              ),
              Text(
                "Response",
                style: TextStyle().s(14),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/icons/post.png",
                scale: 4,
              ),
              Text(
                "Post",
                style: TextStyle().s(14),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/icons/chef_icon.png",
                scale: 4,
              ),
              Text(
                "Recipe",
                style: TextStyle().s(14),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          padding: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: boxDecoration,
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return feed(context);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
              itemCount: 5)),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

feed(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/p2.png", width: 38, height: 38),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Clara",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "1h ago",
                    style: TextStyle().cl(Colors.grey).s(8),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  "Follow",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Icon(Icons.more_vert)
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "What are some easy dinner recipes for beginners?",
        style: TextStyle().cl(Colors.black).w(7).s(12),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
            "Some easy dinner recipes for beginners include spaghetti with marinara sauce, stir-fried vegetables with rice, Read more..."),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icons/like.png",
                  scale: 5,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("13"),
                SizedBox(
                  width: 60,
                ),
                Image.asset(
                  'assets/icons/message.png',
                  color: Colors.black,
                  scale: 5,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("4")
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Image.asset(
        "assets/images/line.png",
      )
    ],
  );
}

masterChefGridView(BuildContext context) {
  return Column(
    children: [
      ListTile(
        leading: Image.asset(
          "assets/images/p1.png",
          scale: 4,
        ),
        title: Text(
          "Master Chef",
          style: TextStyle().s(12),
        ),
        subtitle: Text(
          "40 min Ago",
          style: TextStyle().s(8),
        ),
        trailing: Text(
          "Date : 24/04/2024",
          style: TextStyle().s(10).cl(progressColor),
        ),
      ),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffF8F8F8F8)),
        child: Column(
          children: [
            Image.asset("assets/icons/chef.png"),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => postViewing()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: PrimaryColor),
                      child: Center(
                          child: Text(
                        "Post Content",
                        style: TextStyle().cl(Colors.white),
                      )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/icons/share_icon.png",
                        scale: 5,
                      ),
                      Image.asset(
                        "assets/icons/coment.png",
                        scale: 5,
                      ),
                      Image.asset(
                        "assets/icons/like_unfilled.png",
                        scale: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      )
    ],
  );
}
