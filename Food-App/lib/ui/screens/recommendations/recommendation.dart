import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/images.dart';
import '../climate_impact/climate_impact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../food_accessibilty/food_accessibilty.dart';

class RecommendationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Images.RecommendtioImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 250.h,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              Images.homeIcon,
                              height: 40,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "A zero Waste\nKitchen",
                                  style: TextStyle(
                                    color: Colors.white, // Text color white
                                    backgroundColor: Colors.black12.withOpacity(0.5), // Background color with opacity
                                  ).copyWith(fontSize: 28, fontWeight: FontWeight.w600), // Font size aur weight set karna
                                ),
                              )

                            ],),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              bottomContainer(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                comparePrice(context),
                ScrumptiousRecipes(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the Row
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 36,
                            margin: EdgeInsets.all(20), // Outer margin
                            decoration: BoxDecoration(
                              color: primaryColorWithOpacity,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10), // Horizontal padding
                              child: Center(
                                child: Text(
                                  "Making a Difference Together",
                                  style: TextStyle(
                                    color: blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center, // Center align the text
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                EnvironmentalImpact(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 36,
                        margin: EdgeInsets.all(20), // Outer margin
                        decoration: BoxDecoration(
                          color: primaryColorWithOpacity,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10), // Horizontal padding
                          child: Center(
                            child: Text(
                              "Start Your Journey ",
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                WasteReduction(),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget carbonFootprint(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClimateImpact(),
          ),
        );
      },

      child: Container(
        height: 85.h, // Fixed height
        width: 390, // Fixed width
        decoration: BoxDecoration(
            color: gradient1, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft, // Adjust alignment as needed
                child: Text(
                  "Carbon Footprint",
                  style: TextStyle(color: Colors.white).s(18).w(6),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Align at the start
                  children: [
                    Image.asset(
                      Images.forwardIcon,
                      height: 14,
                      width: 14,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "6 Small Eggs (300g) is equivalent to 1.59kg Carbon \nDioxide (CO2) emissions.",
                        style: TextStyle(color: blackColor).s(12).w(6),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget comparePrice(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Images.ZerroImage,
              height: 90,
            ),
            SizedBox(width: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Transform Your Kitchen \ninto a Zero Waste Haven",
                        style: TextStyle(
                          color: gradient1,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the Row
                      children: [
                        Expanded(
                          child: Text(
                            "Discover delicious ways to use every ingredient\nMake sustainability fun.",
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF777777),
                            ),
                            textAlign: TextAlign.center, // Center text alignment
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the Row
                      children: [
                        Container(
                          width: 90,
                          height: 22,
                          decoration: BoxDecoration(
                            color: primaryColorWithOpacity,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FoodAccessibility()));
                              },
                              child: Text(
                                "Get Started",
                                style: TextStyle(color: blackColor).copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the Row
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 36,
                    margin: EdgeInsets.all(20), // Outer margin
                    decoration: BoxDecoration(
                      color: primaryColorWithOpacity,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10), // Horizontal padding
                      child: Center(
                        child: Text(
                          "Practical Tips & Tricks",
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center, // Center align the text
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Easy-to-follow advice to help you reduce.",
              style: TextStyle(
                color: blackColor,
              ).s(10),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "effortlessly in your kitchen..",
              style: TextStyle(
                color: blackColor,
              ).s(10),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
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
                        Images.bulkImage,
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
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Plan Your Meals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Make Shopping Lists',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Buy in Bulk',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                        Images.labelDateImage,
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
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Plan Your Meals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Make Shopping Lists',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Buy in Bulk',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Expanded( // Use Expanded to prevent overflow
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                      Images.leftOverImage,
                      height: 202,
                      width: double.infinity, // Use double.infinity to make it full width
                      fit: BoxFit.cover, // Fit the image to cover the container
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Plan Your Meals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Make Shopping Lists',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Buy in Bulk',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                    child: Image.asset(
                      Images.scrapsImage,
                      height: 202,
                      width: double.infinity, // Use double.infinity to make it full width
                      fit: BoxFit.cover, // Fit the image to cover the container
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColorWithOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Plan Your Meals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Make Shopping Lists',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Buy in Bulk',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Center the Row
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: primaryColorWithOpacity,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10), // Horizontal padding
                      child: Center(
                        child: Text(
                          "AI-Powered Meal Suggestions",
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center, // Center align the text
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Smart AI suggests recipes, minimizing waste.",
              style: TextStyle(
                color: blackColor,
              ).s(12),
            ),
          ],
        ),

      ],
    );
  }

  Widget EnvironmentalImapct(){
    return Column(children: [
      Container(
        width: 396,
        height: 118,
        decoration: BoxDecoration(
          color: primaryColorWithOpacity,
        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.worldImage,
              scale: 4,
            ),
          ],
        ),
      ),

    ],);
  }


}


class ScrumptiousRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: gradient1,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), // Set top-left radius
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              // Set top-right radius
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [

                SizedBox(height: 10),
                _buildTitle("Scrumptious Recipes"),
                _buildDescription("Get personalized meal suggestions that"),
                _buildDescription("use up your ingredients."),
                SizedBox(height: 10),
                _buildActionButton("Try now"),
                _buildTitle("Healthy Choices"),
                _buildDescription("Enjoy healthy meals without spending extra ."),
                _buildDescription("money."),
                SizedBox(height: 10),
                _buildActionButton("Learn More"),
                _buildTitle("Eco-friendly Living"),
                _buildDescription("Make eco-friendly choices that benefit both."),
                SizedBox(height: 10),
                _buildActionButton("join Us"),

              ],
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildTitle(String text) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.google, // Google icon
          size: 10.0, // Set desired size
          color: Colors.white, // Set desired color
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center, // Center text alignment
        ),
      ],
    );
  }

  Widget _buildDescription(String text) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center, // Center text alignment
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(String buttonText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, // Align button to the start
      children: [
        Container(
          width: 90,
          height: 22,
          decoration: BoxDecoration(
            color: primaryColorWithOpacity,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: whiteColor)
                  .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class EnvironmentalImpact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 396,
          height: 118,
          decoration: BoxDecoration(
            color: primaryColorWithOpacity,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10,),
              Container(
                width: 80, // Fixed width for the image
                child: Image.asset(
                  Images.worldImage,
                  fit: BoxFit.contain,
                ),
              ),
              // Column for text
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Environmental Impact',
                      style: TextStyle(
                        color: Colors.black, // Set desired text color
                        fontSize: 16, // Set font size
                        fontWeight: FontWeight.bold, // Set font weight
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Less waste means a healthier planet.',
                      style: TextStyle(
                        color: Colors.white, // Set desired text color
                        fontSize: 10, // Set font size
                        fontWeight: FontWeight.w400, // Set font weight
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
        color: primaryColorWithOpacity,
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
      color: primaryColorWithOpacity,
      child: Row(
        children: [
          SizedBox(height: 20),
          ImageWithCaption(
            imagePath: Images.bucktImage,
            caption: 'Waste Reduction',
          ),
          SizedBox(width: 10), // Space between images
          ImageWithCaption(
            imagePath: Images.bucktImage, // Change this to the second image path
            caption: 'Saving Money',
          ),
          SizedBox(width: 10), // Space between images
          ImageWithCaption(
            imagePath: Images.bucktImage, // Change this to the third image path
            caption: 'Health Benefits',
          ),
        ],
      ),
    );
  }
}







