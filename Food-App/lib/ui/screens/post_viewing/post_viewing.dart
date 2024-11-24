import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';
import '../meal_planner/meal_planner.dart';
import 'create_content.dart';

class postViewing extends StatefulWidget {
  const postViewing({super.key});

  @override
  _ClimateImpactState createState() => _ClimateImpactState();
}

class _ClimateImpactState extends State<postViewing>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    final imageHeightPercentage = 300 / screenHeight;
    final containerTopPercentage = 243 / screenHeight;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        Images.postViewBgImage,
                        width: screenWidth,
                        height: screenHeight * imageHeightPercentage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Images.homeIcon,
                            height: 40,
                          ),
                          Text(
                            "Scan Product",
                            style: TextStyle(color: whiteColor).s(20).w(6),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4.5),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  border:
                                      Border.all(color: PrimaryColor, width: 2),
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10.r,
                                      spreadRadius: 4,
                                      offset: Offset(0, 4.w),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  Images.homeScan,
                                  scale: 4,
                                ),
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
                    )
                  ],
                ),
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.r),
                      topRight: Radius.circular(32.r),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TabBar(
                                    controller: _tabController,
                                    labelColor: PrimaryColor,
                                    indicatorColor: Colors.yellow.shade700,
                                    tabs: const [
                                      Tab(text: 'Recipes'),
                                      Tab(text: 'Comments'),
                                    ],
                                  ),
                                  Container(
                                    height: 900.h, // Set height for TabBarView
                                    child: TabBarView(
                                      controller: _tabController,
                                      children: [
                                        mealsTabs(),
                                        impactTabs(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Form Container
        ],
      ),
    );
  }

  mealsTabs() {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateContent()));
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
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
            ],
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
                      SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  impactTabs() {
    return SingleChildScrollView(
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

  educationalMaterial() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 10,
          ),
          child: Container(
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.dormonImage,
                      width: 172,
                      height: 165,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.VoiceImage,
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Text(
                "Welcome to Climate Impact Monitoring!",
                style: TextStyle(color: blackColor).s(12).w(6),
              )
            ]),
            Row(children: [
              Text(
                "Current Status:",
                style: TextStyle(color: gradient2).s(24).w(6),
              )
            ]),
            Row(children: [
              Text(
                "Total Carbon Footprint: 150 kg co2 \nSustainable Choices: 60%",
                style: TextStyle(color: blackColor).s(12).w(4),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 938.7, // Top position
            left: 172.74, // Left position
            child: Transform.rotate(
              angle:
                  -91.06 * (3.14159265359 / 180), // Convert degrees to radians
              child: Opacity(
                opacity: 0.0, // Set opacity
                child: Container(
                  width: 27, // Width of the container
                  height: 99.24, // Height of the container
                  decoration: BoxDecoration(
                    color: Colors.blue, // Change this to your desired color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
