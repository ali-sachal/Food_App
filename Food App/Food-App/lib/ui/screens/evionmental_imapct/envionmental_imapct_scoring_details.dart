import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';
import '../health_predictor/health_predictor.dart';

class EnvionmentalImapctScoringDetails extends StatefulWidget {
  @override
  _ComparePricePageState createState() => _ComparePricePageState();
}

class _ComparePricePageState extends State<EnvionmentalImapctScoringDetails>
    with SingleTickerProviderStateMixin {
  String selectedButton = 'Daily';

  void _onButtonPressed(String button) {
    setState(() {
      selectedButton = button; // Update the selected button
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              // Header Container
              Container(
                height: 206.h,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30.r,
                            backgroundColor: PrimaryColor,
                            child: CircleAvatar(
                              radius: 25.sp,
                              backgroundImage: AssetImage(
                                Images.homeIcon,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Compare Prices",
                                style:
                                    TextStyle(color: Colors.white).s(20).w(6),
                                textAlign: TextAlign.center,
                              ),
                            ),
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
                              SizedBox(width: 5.w),
                              Image.asset(
                                Images.homeMenu,
                                scale: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 100.h, // Responsive positioning
            left: 20.w,
            right: 20.w,
            child: Container(
              margin: EdgeInsets.all(8.0),
              width: 390.w,
              height: 202.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Subtle shadow color
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3), // Position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Background image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.bgFlour), // Background image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Dark overlay
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  // Content
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Compare prices with different prices",
                              style: TextStyle(color: Colors.white).s(12).w(4),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "EGGS",
                              style: TextStyle(color: Colors.white).s(36).w(7),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            // Creating 5 stars for rating
                            ...List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.yellow, // Color of the stars
                                size: 20.sp, // Responsive size
                              ),
                            ),
                            SizedBox(width: 8.w),
                            // Space between stars and rating text
                            Text(
                              "5.0", // Displaying the rating
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // TabBar
          Positioned(
            top: 320.h, // Positioning below the first container
            left: 0,
            right: 0,
            child: TabBar(
              controller: _tabController,
              labelColor: PrimaryColor,
              indicatorColor: Colors.yellow.shade700,
              tabs: const [
                Tab(text: 'Shops'),
                Tab(text: 'Characteristics'),
                Tab(text: 'Feedback'),
              ],
            ),
          ),

          // TabBarView
          Positioned(
            top: 360.h,
            // Adjust according to your design
            left: 0,
            right: 0,
            bottom: 0,
            // Fill remaining space
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab 1
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '  Filters',
                                style: const TextStyle().w(6).s(14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                Images.filterIcon,
                                scale: 4,
                                // height: 40,
                              ),
                            ],
                          ),
                          Image.asset(
                            Images.threeDots,
                            scale: 4,
                            // height: 40,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '  Price Range',
                                style: const TextStyle().w(6).s(14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Text(
                            '  Location (City)',
                            style: const TextStyle().w(6).s(14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: gradient2,
                                    // Change this to your desired color
                                    borderRadius: BorderRadius.circular(
                                        12), // Adjust the radius as needed// Add border color and width
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '  0.01 Kg - 0.20 Kg',
                                          style: const TextStyle().w(6).s(14),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          Images.dropDown,
                                          scale: 3.3,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              // Add padding for consistency
                              decoration: BoxDecoration(
                                color: gradient2,
                                // Change this to your desired color
                                borderRadius: BorderRadius.circular(
                                    12), // Adjust the radius as needed
                                // Add border color and width
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '  Select City',
                                      style: const TextStyle().w(6).s(14),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      Images.dropDown,
                                      scale: 3.3,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      color: gradient1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              margin: EdgeInsets.all(5), // Use uniform margin
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    // Subtle shadow for depth
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // Position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // Center align vertically
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // Add padding around the image
                                    child: Image.asset(
                                      Images.addToCart,
                                      height: 32,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  // Space between image and text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // Center the column vertically
                                      children: [
                                        Text(
                                          'Coop Grocery Store',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        // Slightly reduced space for a tighter layout
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Coop Grocery Store,',
                                                  style: TextStyle(
                                                    color: gradient1,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '3.66 Kr',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        // Adjusted space
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
                                              SizedBox(width: 6),
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
                            Container(
                              height: 80,
                              // Increased height for better alignment and visual balance
                              margin: EdgeInsets.all(5),
                              // Use uniform margin
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    // Subtle shadow for depth
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // Position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // Center align vertically
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // Add padding around the image
                                    child: Image.asset(
                                      Images.addToCart,
                                      height: 32,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  // Space between image and text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // Center the column vertically
                                      children: [
                                        Text(
                                          'Coop Grocery Store',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        // Slightly reduced space for a tighter layout
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Coop Grocery Store,',
                                                  style: TextStyle(
                                                    color: gradient1,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '3.66 Kr',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        // Adjusted space
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
                                              SizedBox(width: 6),
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
                            Container(
                              height: 80,
                              margin: EdgeInsets.all(5), // Use uniform margin
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    // Subtle shadow for depth
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // Position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // Center align vertically
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      Images.addToCart,
                                      height: 32,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  // Space between image and text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // Center the column vertically
                                      children: [
                                        Text(
                                          'Coop Grocery Store',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Coop Grocery Store,',
                                                  style: TextStyle(
                                                    color: gradient1,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '3.66 Kr',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        // Adjusted space
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
                                              SizedBox(width: 6),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Tab 2
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: gradient1,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Wheat flour contains gluten-forming proteins,\n"
                                    " primarily glutenin and gliadin, which give \n"
                                    "dough its elasticity and strength.",
                                    style: TextStyle(
                                      fontSize: 12, // Set font size
                                      // Make the text bold
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  // Add space between texts
                                  Text(
                                    "Wheat flour contains gluten-forming proteins, \n"
                                    "primarily glutenin and gliadin,\n"
                                    " which give dough its elasticity and strength.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "Wheat flour contains gluten-forming proteins, \nprimarily glutenin and gliadin,\n which give dough its elasticity and strength.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
                // Tab 3r

                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Container(
                        height: 62,
                        color: primaryColorWithOpacity,
                        child: Row(
                          children: [
                            _buildButton("All", selectedButton == "All"),
                            SizedBox(
                              width: 10,
                            ),
                            _buildButton("Popular", selectedButton == "Popular"),
                            SizedBox(
                              width: 10,
                            ),
                            _buildButton("Latest", selectedButton == "Latest"),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.black
                            )
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Row(children: [
                                      Image.asset(
                                        Images.avatraImage,
                                        height: 28,
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        "Clara . 1h ago",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),

                                    ],),
                                    Transform.rotate(
                                      angle: 3.14 / 2,
                                      child: Image.asset(
                                        Images.threeDots,
                                        height: 10,
                                        width: 10,
                                      ),
                                    ),


                                  ],),
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
                                    child: Row(children: [
                                      Row(children: [
                                        Icon(
                                          Icons.thumb_up_off_alt,
                                          size: 20.0,
                                          color: Colors.black,
                                        ),
                                        Text("13"),

                                      ],),
                                      SizedBox(width: 30,),
                                      Image.asset(
                                        Images.chatMessage,
                                        height: 16,
                                        width: 16,
                                      ),
                                      SizedBox(width: 10,),
                                      Text("4"),

                                    ],),
                                  ),// Space at the bottom
                                  Divider(
                                     height: 2,
                                     color: Colors.black,
                                   ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      Row(children: [
                                        Image.asset(
                                          Images.avatraImage,
                                          height: 28,
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Clara . 1h ago",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),

                                      ],),
                                      Transform.rotate(
                                        angle: 3.14 / 2,
                                        child: Image.asset(
                                          Images.threeDots,
                                          height: 10,
                                          width: 10,
                                        ),
                                      ),


                                    ],),
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
                                    child: Row(children: [
                                      Row(children: [
                                        Icon(
                                          Icons.thumb_up_off_alt,
                                          size: 20.0,
                                          color: Colors.black,
                                        ),
                                        Text("13"),

                                      ],),
                                      SizedBox(width: 30,),
                                      Image.asset(
                                        Images.chatMessage,
                                        height: 16,
                                        width: 16,
                                      ),
                                      SizedBox(width: 10,),
                                      Text("4"),

                                    ],),
                                  ),// Space at the bottom


                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(children: [
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
                        Expanded( // Use Expanded to fill remaining space
                          child: Container(
                            height: 45,

                            child: const TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: gradient1,
                                hintText: 'Comments',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: (){

                          },
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


                      ],),

                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildButton(String label, bool isSelected) {
    return GestureDetector(
      onTap: () => _onButtonPressed(label),
      child: Container(
        width: 114,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? whiteColor : gradient2,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? primaryColorWithOpacity : Colors.black,
              fontWeight: FontWeight.bold, // Bold text
            ),
          ),
        ),
      ),
    );
  }

   commentContainer() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        border: Border(
          top: BorderSide(width: 1, color: Colors.transparent),
          left: BorderSide(width: 0, color: Colors.transparent),
          right: BorderSide(width: 0, color: Colors.transparent),
          bottom: BorderSide(width: 0, color: Colors.transparent),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Text(
            "Clara",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8), // Space between title and content
          Text(
            "I made a recipe for my kid on his birthday,\nusing this product.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 16), // Space at the bottom
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // Align the button to the end
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                child: Text("View Recipe"),
              ),
            ],
          ),
        ],
      ),
    );
  }


}



