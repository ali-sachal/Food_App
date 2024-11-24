import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';

class FoodAccessibility extends StatefulWidget {
  const FoodAccessibility({super.key});

  @override
  _FoodAccessibilityState createState() => _FoodAccessibilityState();
}

class _FoodAccessibilityState extends State<FoodAccessibility>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 103.h,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor: PrimaryColor,
                          child: CircleAvatar(
                            radius: 25.r,
                            backgroundImage: AssetImage(Images.homeIcon),
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
                  ),
                ),
                SizedBox(height: 20),
                ImageWithTextOverlay(), // Use the ImageWithTextOverlay widget
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: primaryColorWithOpacity.withOpacity(0.60),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: whiteColor,
                    ),
                    hintText: 'Search Meals',
                    hintStyle: const TextStyle(color: whiteColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
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
                            Tab(text: 'All Recipes '),
                            Tab(text: 'Recent'),
                            Tab(text: 'Favourite'),
                            Tab(text: 'Viewed'),
                          ],
                        ),
                        Container(
                          height: 250.h, // Set height for TabBarView
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Center(child: allRecipes()),

                              Center(child: recentContainer()),

                              Center(child:mealPlanningBudget()),

                              Center(child: Text("ddfg")),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget allRecipes() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            Images.MuttonImage,
            height: 130,
          ),
          SizedBox(height: 10,),
          SchewazanChickenContainer(),
          StarRatingWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded( // Use Expanded to prevent overflow
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10), // Set top-left radius
                            topRight: Radius.circular(10), // Set top-right radius
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            Images.BeefImage,
                            height: 202,
                            width: double.infinity,
                            fit: BoxFit.cover, // Fit the image to cover the container
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beef',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Heart icon positioned at the top right
                      Positioned(
                        top: 8, // Adjust top position as needed
                        right: 8, // Adjust right position as needed
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.5), // Semi-transparent background

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0), // Padding around the icon
                            child: Icon(
                              Icons.favorite_border, // Heart icon
                              color: Colors.white, // Heart color
                              size: 20, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded( // Use Expanded to prevent overflow
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10), // Set top-left radius
                            topRight: Radius.circular(10), // Set top-right radius
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            Images.BeefImage,
                            height: 202,
                            width: double.infinity,
                            fit: BoxFit.cover, // Fit the image to cover the container
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beef',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Heart icon positioned at the top right
                      Positioned(
                        top: 8, // Adjust top position as needed
                        right: 8, // Adjust right position as needed
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.5), // Semi-transparent background

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0), // Padding around the icon
                            child: Icon(
                              Icons.favorite_border, // Heart icon
                              color: Colors.white, // Heart color
                              size: 20, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded( // Use Expanded to prevent overflow
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10), // Set top-left radius
                            topRight: Radius.circular(10), // Set top-right radius
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            Images.BeefImage,
                            height: 202,
                            width: double.infinity,
                            fit: BoxFit.cover, // Fit the image to cover the container
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beef',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Heart icon positioned at the top right
                      Positioned(
                        top: 8, // Adjust top position as needed
                        right: 8, // Adjust right position as needed
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.5), // Semi-transparent background

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0), // Padding around the icon
                            child: Icon(
                              Icons.favorite_border, // Heart icon
                              color: Colors.white, // Heart color
                              size: 20, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded( // Use Expanded to prevent overflow
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10), // Set top-left radius
                            topRight: Radius.circular(10), // Set top-right radius
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            Images.BeefImage,
                            height: 202,
                            width: double.infinity,
                            fit: BoxFit.cover, // Fit the image to cover the container
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beef',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Heart icon positioned at the top right
                      Positioned(
                        top: 8, // Adjust top position as needed
                        right: 8, // Adjust right position as needed
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.5), // Semi-transparent background

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0), // Padding around the icon
                            child: Icon(
                              Icons.favorite_border, // Heart icon
                              color: Colors.white, // Heart color
                              size: 20, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SchewazanChickenContainer1(),
          SizedBox(height: 20,),
          beefContainer(),
          SizedBox(height: 20,),
          WasteReduction(),
          SizedBox(height: 20,),
          moreCategories()

        ],
      ),
    );
  }

  SchewazanChickenContainer() {
    return Container(
      width: 350,
      height: 61,
      decoration: BoxDecoration(
        color: primaryColorWithOpacity,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "   Schewazan Chicken",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Perfect resstaurant quality schewazan chicken",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "for you to try at home. #happycooking toyou",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SchewazanChickenContainer1() {
    return Container(
      width: 350,
      height: 61,
      decoration: BoxDecoration(
        color: primaryColorWithOpacity,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Trending on Food Fusion",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Trending Recipies",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  beefContainer() {
    return Container(
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              Images.CakeImage, // Replace with your background image path
              fit: BoxFit.cover, // Cover the whole area
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded( // Use Expanded to prevent overflow
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10), // Set top-left radius
                                topRight: Radius.circular(10), // Set top-right radius
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                Images.CakeImage, // Replace with your image path
                                height: 202,
                                width: double.infinity,
                                fit: BoxFit.cover, // Fit the image to cover the container
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Beef',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Heart icon positioned at the top left
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.5), // Semi-transparent background
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0), // Padding around the icon
                                child: Icon(
                                  Icons.favorite_border, // Heart icon
                                  color: Colors.white, // Heart color
                                  size: 20, // Icon size
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded( // Use Expanded to prevent overflow
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10), // Set top-left radius
                                topRight: Radius.circular(10), // Set top-right radius
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                Images.CakeImage, // Replace with your image path
                                height: 202,
                                width: double.infinity,
                                fit: BoxFit.cover, // Fit the image to cover the container
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Beef',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20, // Adjust top position as needed
                            left: 8, // Fixed distance from the left side
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.5), // Semi-transparent background
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0), // Padding around the icon
                                child: Icon(
                                  Icons.favorite_border, // Heart icon
                                  color: Colors.white, // Heart color
                                  size: 20, // Icon size
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  moreCategories(){
   return Column(children: [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(children: [
         Text("More Categories",style: TextStyle(
       fontSize: 14,
       fontWeight: FontWeight.w700,
          ),)
       ],),
     ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(children: [
         Text("All recipes",style: TextStyle(
       fontSize: 14,
       fontWeight: FontWeight.w700,
          ),)
       ],),
     ),
     Container(
       height: MediaQuery.of(context).size.height / 1.10,
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
               return MarketPlaceItems();
             },
             itemCount: 6,
           );
         },
       ),
     ),

   ],);
  }

  ///Recents

  recentContainer(){
    return SingleChildScrollView(
      child: Column(children: [
        Image.asset(
          Images.recipeImage,
          fit: BoxFit.cover, // Cover the area of the container
        ),
        SizedBox(height: 20,),
        schewazanContainer(),
        SizedBox(height: 20,),
        IngredientsContainer(),
        SizedBox(height: 20,),
        RecipeInstructionsContainer(),
        Row(
          children: [
            buildRecipeBy(),
          ],
        ),
        YoMayAlsoLike(),

      
      ],),
    );
  }

  schewazanContainer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 390,
        height: 133,
        decoration: BoxDecoration(
          color:gradient1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), // Add the radius for the topLeft corner
            topRight: Radius.circular(10),
          )
        ),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(children: [
              Text("   Schewazan Chicken",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),),
            ],),
            Row(children: [
              Text("Spice up your table with Sizzling Chilli Oil \nPotatoes- spicy, fiery, and irresistibly\ndelicious! #happycookingtoyo\n#foodfusion #araywahh",style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),),
            ],),

          ],),
        )


      ),
    );
  }


  Widget buildRecipeBy() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Recipe by: ",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: "Seema Hanif",
              style: TextStyle(
                fontSize: 14,
                color: Colors.yellow,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }


 ///Recents

  Widget mealPlanningBudget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            Images.recipeImage,
            fit: BoxFit.cover, // Cover the area of the container
          ),
          SizedBox(height: 20),
          Container(
            width: 320, // Use full width available
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Adjust horizontal padding
            margin: EdgeInsets.only(bottom: 10), // Space between containers
            decoration: BoxDecoration(
              color: primaryColorWithOpacity, // Inner container color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // Image on the left
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    Images.DeliciousImage,
                    width: 80, // Width of the image
                    height: 80, // Height of the image
                    fit: BoxFit.cover,
                  ),
                ),
                // Text on the right
                Expanded( // Use Expanded to take available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spaghetti Carbonara',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Current Price: \$12.99',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Budget Options:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text('• Option 1: \$10.00'),
                      SizedBox(height: 5), // Space between text items
                      Text('• Option 2: \$8.50'),
                      SizedBox(height: 10), // Space before the button
                      ElevatedButton(
                        onPressed: () {
                          // Define your onPressed functionality here
                        },
                        child: Text('Select Recipe'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 320, // Use full width available
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Adjust horizontal padding
            margin: EdgeInsets.only(bottom: 10), // Space between containers
            decoration: BoxDecoration(
              color: primaryColorWithOpacity, // Inner container color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // Image on the left
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    Images.DeliciousImage,
                    width: 80, // Width of the image
                    height: 80, // Height of the image
                    fit: BoxFit.cover,
                  ),
                ),
                // Text on the right
                Expanded( // Use Expanded to take available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spaghetti Carbonara',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Current Price: \$12.99',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Budget Options:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text('• Option 1: \$10.00'),
                      SizedBox(height: 5), // Space between text items
                      Text('• Option 2: \$8.50'),
                      SizedBox(height: 10), // Space before the button
                      ElevatedButton(
                        onPressed: () {
                          // Define your onPressed functionality here
                        },
                        child: Text('Select Recipe'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 320, // Use full width available
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Adjust horizontal padding
            margin: EdgeInsets.only(bottom: 10), // Space between containers
            decoration: BoxDecoration(
              color: primaryColorWithOpacity, // Inner container color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // Image on the left
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    Images.DeliciousImage,
                    width: 80, // Width of the image
                    height: 80, // Height of the image
                    fit: BoxFit.cover,
                  ),
                ),
                // Text on the right
                Expanded( // Use Expanded to take available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spaghetti Carbonara',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Current Price: \$12.99',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Budget Options:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text('• Option 1: \$10.00'),
                      SizedBox(height: 5), // Space between text items
                      Text('• Option 2: \$8.50'),
                      SizedBox(height: 10), // Space before the button
                      ElevatedButton(
                        onPressed: () {
                          // Define your onPressed functionality here
                        },
                        child: Text('Select Recipe'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}











class ImageWithTextOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(Images.RecommendtioImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10.w,
            bottom: 10.h,
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.black54,
              child: Text(
                'Food Traditions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StarRatingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 5 star icons
        Row(
          children: List.generate(5, (index) => Icon(
            Icons.star, // Star icon
            color: primaryColorWithOpacity, // Star color
            size: 20, // Size of the star
          )),
        ),
        SizedBox(width: 8),
        Text(
          '200 reviews',
          style: TextStyle(
            color: Colors.black, // Text color
            fontSize: 16, // Font size
            fontWeight: FontWeight.w400, // Font weight
          ),
        ),
      ],
    );
  }
}

class ChickenContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(


      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // // Optionally add a box shadow for better appearance
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     blurRadius: 4,
        //     spreadRadius: 1,
        //     offset: Offset(0, 2),
        //   ),
        // ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: gradient1,
            ),
            child: Column(
              children: [
                Text(
                  'You May Also Like',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Based on Your recent activity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8), // Add some spacing between text and image
          Row(children: [
            Image.asset(
              Images.CheckenImage, // Replace with your image path
              fit: BoxFit.cover, // Fit the image to cover the container
            ),
          ],)
        ],
      ),
    );
  }
}

class ImageWithCaption extends StatelessWidget {
  final String imagePath; // Path to the image
  final String caption; // Caption text

  ImageWithCaption({required this.imagePath, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

      ),
      child: Column(
        children: [
          SizedBox(height: 8),
          Container(
            width: 80,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 4),
          Text(
            caption,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class  WasteReduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the card
        borderRadius: BorderRadius.circular(10), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            blurRadius: 4, // Spread of the shadow
            spreadRadius: 1, // How much the shadow spreads
            offset: Offset(0, 2), // Shadow direction
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: gradient1,
                  child:Column(children: [
                    Text(
                      'You May Also Like ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Based on Your recent activity  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),


                  ],),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(height: 20),
                  ImageWithCaption(
                    imagePath: Images.CheckenImage,
                    caption: 'Crispy Chicken',
                  ),
                  SizedBox(width: 10), // Space between images
                  ImageWithCaption(
                    imagePath: Images.CheckenImage, // Change this to the second image path
                    caption: 'Crispy Chicken',
                  ),
                  SizedBox(width: 10), // Space between images
                  ImageWithCaption(
                    imagePath: Images.CheckenImage, // Change this to the third image path
                    caption: 'Crispy Chicken',
                  ),
                  SizedBox(width: 10), // Space between images
                  ImageWithCaption(
                    imagePath: Images.CheckenImage, // Change this to the third image path
                    caption: 'Crispy Chicken',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketPlaceItems extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.start, // Changed to start
          children: [
            // Image container
            Container(
              height: 100, // Set a fixed height for the image
              width: double.infinity, // Makes image stretch to full width
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // Match card radius
                child: Image.asset(
                  Images.ingredentImage,
                  fit: BoxFit.cover, // Cover the area of the container
                ),
              ),
            ),
            SizedBox(height: 8.0), // Adjust space after the image
            // Text row for the first line
            Text(
              '1 By Ingredient',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600, // Optional: make it bolder
              ),
            ),

            // Text row for the second line
            Text(
              '1 By Ingredient',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IngredientsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 390,

        decoration: BoxDecoration(
          color: primaryColorWithOpacity,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
            children: [
              Text(
                "Ingredients:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5), // Add some spacing between title and list
              // List of ingredients with bullet points
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align to the start for bullet points
                children: [
                  _buildBulletPoint("Chicken"),
                  _buildBulletPoint("Schezwan sauce"),
                  _buildBulletPoint("Soy sauce"),
                  _buildBulletPoint("Vinegar"),
                  _buildBulletPoint("Cornflour"),
                  _buildBulletPoint("Ginger"),
                  _buildBulletPoint("Garlic"),
                  _buildBulletPoint("Onion"),
                  _buildBulletPoint("Green chilies"),
                  _buildBulletPoint("Bell pepper"),
                  _buildBulletPoint("Salt"),
                  _buildBulletPoint("Black pepper"),
                  _buildBulletPoint("Oil"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to create bullet points
  Widget _buildBulletPoint(String text) {
    return Row(
      children: [
        Text("• ", style: TextStyle(fontSize: 12)), // Bullet character
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeInstructionsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 390,
        decoration: BoxDecoration(
          color: primaryColorWithOpacity,
          borderRadius: BorderRadius.circular(39),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldStep("Marinate Chicken:"),
              _buildBulletPoint("Cut chicken into pieces."),
              _buildBulletPoint("Mix chicken with soy sauce, vinegar, and cornflour."),
              _buildBulletPoint("Marinate for 15-20 minutes."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Prepare Vegetables:"),
              _buildBulletPoint("Chop ginger and garlic."),
              _buildBulletPoint("Slice onion, bell pepper, and green chilies."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Cook Chicken:"),
              _buildBulletPoint("Heat oil in a pan."),
              _buildBulletPoint("Cook chicken until golden brown."),
              _buildBulletPoint("Remove and set aside."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Sauté Aromatics:"),
              _buildBulletPoint("Add ginger, garlic, and chilies to the pan."),
              _buildBulletPoint("Sauté until fragrant."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Cook Vegetables:"),
              _buildBulletPoint("Add onion and bell pepper."),
              _buildBulletPoint("Stir-fry until slightly tender."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Combine Chicken and Sauce:"),
              _buildBulletPoint("Return chicken to the pan."),
              _buildBulletPoint("Add Schezwan sauce, soy sauce, and vinegar."),
              _buildBulletPoint("Stir to coat evenly."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Thicken Sauce:"),
              _buildBulletPoint("Mix cornflour with water to make a slurry."),
              _buildBulletPoint("Add slurry to the pan."),
              _buildBulletPoint("Stir until sauce thickens."),
              SizedBox(height: 10), // Space between sections
              _buildBoldStep("Season and Serve:"),
              _buildBulletPoint("Season with salt and pepper."),
              _buildBulletPoint("Serve hot with rice or noodles."),
            ],
          ),
        ),
      ),
    );
  }

  // Method to create bold step titles
  Widget _buildBoldStep(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0), // Padding around the step
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Method to create bullet points
  Widget _buildBulletPoint(String text) {
    return Row(
      children: [
        Text("• ", style: TextStyle(fontSize: 12)), // Bullet character
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}


class YoMayAlsoLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 390,
        decoration: BoxDecoration(
          color: primaryColorWithOpacity,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("YOU MAY ALSO LIKE,"),
                Text("More,"),

              ],),
              Center(
                child: Image.asset(
                  Images.chickenSkewers,
                   height: 259,
                   width: 249,
                   // Cover the area of the container
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  // Method to create bold step titles
  Widget _buildBoldStep(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0), // Padding around the step
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      children: [
        Text("• ", style: TextStyle(fontSize: 12)), // Bullet character
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}



class RecipeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow, // Main container color
      child: ListView.builder(
        itemCount: 1, // Number of containers
        itemBuilder: (context, index) {
          return Container(
            width: 393, // Fill width
            height: 183, // Fixed height
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 188), // Padding
            margin: EdgeInsets.only(bottom: 10), // Space between containers
            decoration: BoxDecoration(
              color: Colors.white, // Inner container color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // Image on the left
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
               Images.DeliciousImage,
                    width: 80, // Width of the image
                    height: 80, // Height of the image
                    fit: BoxFit.cover,
                  ),
                ),
                // Text on the right
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spaghetti Carbonara',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Current Price: \$12.99',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Text(
                        'Budget Options:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5), // Space between text items
                      Row(
                        children: [
                          Text('• Option 1: \$10.00'),
                        ],
                      ),
                      SizedBox(height: 5), // Space between text items
                      Row(
                        children: [
                          Text('• Option 2: \$8.50'),
                        ],
                      ),
                      SizedBox(height: 10), // Space before the button
                      ElevatedButton(
                        onPressed: () {
                          // Define your onPressed functionality here
                        },
                        child: Text('Select Recipe'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



















