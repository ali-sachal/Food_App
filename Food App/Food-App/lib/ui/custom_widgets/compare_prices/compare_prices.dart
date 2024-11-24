import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';

class ComparePricePage extends StatefulWidget {
  @override
  _ComparePricePageState createState() => _ComparePricePageState();
}

class _ComparePricePageState extends State<ComparePricePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.w),
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
                                style: TextStyle(color: Colors.white).s(20).w(6),
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
                                  border: Border.all(color: PrimaryColor, width: 2),
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
                    borderRadius: BorderRadius.circular(15.r), // Match the border radius
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
                              "Wheat \n Flour",
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
                              style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
              ],
            ),
          ),

          // TabBarView
          Positioned(
            top: 360.h, // Adjust according to your design
            left: 0,
            right: 0,
            bottom: 0, // Fill remaining space
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
                              SizedBox(width: 10,),
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
                              SizedBox(width: 10,),


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
                                  color: gradient2, // Change this to your desired color
                                  borderRadius: BorderRadius.circular(12), // Adjust the radius as needed// Add border color and width
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '  0.01 Kg - 0.20 Kg',
                                        style: const TextStyle().w(6).s(14),
                                      ),
                                      SizedBox(width: 5,),
                                      Image.asset(
                                        Images.dropDown,
                                        scale: 3,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8), // Add padding for consistency
                            decoration: BoxDecoration(
                              color: gradient2, // Change this to your desired color
                              borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
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
                                  SizedBox(width: 5,),
                                  Image.asset(
                                    Images.dropDown,
                                    scale: 3,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )

                    ),

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
                                    color: Colors.grey.withOpacity(0.2), // Subtle shadow for depth
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // Position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center, // Center align vertically
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0), // Add padding around the image
                                    child: Image.asset(
                                      Images.addToCart,
                                      height: 32,
                                    ),
                                  ),
                                  SizedBox(width: 20), // Space between image and text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
                                      children: [
                                        Text(
                                          'Coop Grocery Store',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4), // Slightly reduced space for a tighter layout
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        const SizedBox(height: 4), // Adjusted space
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5.0),
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
                              height: 80, // Increased height for better alignment and visual balance
                              margin: EdgeInsets.all(5), // Use uniform margin
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2), // Subtle shadow for depth
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // Position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center, // Center align vertically
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0), // Add padding around the image
                                    child: Image.asset(
                                      Images.addToCart,
                                      height: 32,
                                    ),
                                  ),
                                  SizedBox(width: 20), // Space between image and text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
                                      children: [
                                        Text(
                                          'Coop Grocery Store',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4), // Slightly reduced space for a tighter layout
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        const SizedBox(height: 4), // Adjusted space
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5.0),
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
                                    color: Colors.grey.withOpacity(0.2), // Subtle shadow for depth
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // Position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center, // Center align vertically
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0), // Add padding around the image
                                    child: Image.asset(
                                      Images.addToCart,
                                      height: 32,
                                    ),
                                  ),
                                  SizedBox(width: 20), // Space between image and text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
                                      children: [
                                        Text(
                                          'Coop Grocery Store',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 4), // Slightly reduced space for a tighter layout
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        const SizedBox(height: 4), // Adjusted space
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5.0),
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
                              padding: EdgeInsets.all(16.0), // Add padding inside the container
                              margin: EdgeInsets.all(8.0), // Add margin outside the container
                              decoration: BoxDecoration(
                                color: gradient1, // Set background color
                               // Add border color
                                borderRadius: BorderRadius.circular(8.0), // Rounded corners
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
                                  SizedBox(height: 8.0), // Add space between texts
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
