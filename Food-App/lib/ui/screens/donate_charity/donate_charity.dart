import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';

import '../../../core/constant/images.dart';

class DonateToCharity extends StatefulWidget {
  const DonateToCharity({super.key});

  @override
  _DonateToCharityState createState() => _DonateToCharityState();
}

class _DonateToCharityState extends State<DonateToCharity> {
  String selectedButton = 'Daily';


  void _onButtonPressed(String button) {
    setState(() {
      selectedButton = button;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
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
                        "    Donate Food and Recipes",
                        style: TextStyle(color: Colors.black).w(6).s(13),
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
                    Images.donateFoodCover,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle().w(6).s(13),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: gradient1,
                          borderRadius: BorderRadius.circular(10), // Set the border radius
                        ),

                        child: Center(
                          child: Text(
                            "Show All",
                            style: TextStyle(color: Colors.white).w(6).s(13),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(

                    children: [
                      _buildButton("Daily", selectedButton == "Daily"),
                      _buildButton("Weekly", selectedButton == "Weekly"),
                      _buildButton("Monthly", selectedButton == "Monthly"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            lineWidth: 6.0,
                            percent: 0.6,
                            center: Text("85%"),
                            progressColor: PrimaryColor,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Health',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            '34,200/40,000',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 93,
                            height: 30,
                            decoration: BoxDecoration(
                              color: gradient1,
                              // Background color of the container
                              border: Border.all(
                                color: Colors.white, // Border color
                                width: 1, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  10), // Optional: round the corners
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Plus Icon
                                Icon(
                                  Icons.add, // Plus icon
                                  color: Colors.white, // Icon color
                                  size: 16, // Size of the icon
                                ),
                                const SizedBox(width: 4),
                                // Space between icon and line
                                // Vertical Line
                                Container(
                                  width: 1, // Width of the line
                                  height: 16, // Height of the line
                                  color: Colors.white, // Line color
                                ),
                                const SizedBox(width: 4),
                                // Space between line and text
                                // Donate Text
                                Text(
                                  "Donate",
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize: 14, // Font size
                                    fontWeight: FontWeight.bold, // Text weight
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            lineWidth: 8.0,
                            percent: 0.15,
                            center: Text("60%"),
                            progressColor: PrimaryColor,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Education',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            '24,000/40,000',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 93,
                            height: 30,
                            decoration: BoxDecoration(
                              color: gradient1,
                              // Background color of the container
                              border: Border.all(
                                color: Colors.white, // Border color
                                width: 1, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  10), // Optional: round the corners
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Plus Icon
                                Icon(
                                  Icons.add, // Plus icon
                                  color: Colors.white, // Icon color
                                  size: 16, // Size of the icon
                                ),
                                const SizedBox(width: 4),
                                // Space between icon and line
                                // Vertical Line
                                Container(
                                  width: 1, // Width of the line
                                  height: 16, // Height of the line
                                  color: Colors.white, // Line color
                                ),
                                const SizedBox(width: 4),
                                // Space between line and text
                                // Donate Text
                                Text(
                                  "Donate",
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize: 14, // Font size
                                    fontWeight: FontWeight.bold, // Text weight
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            lineWidth: 6.0,
                            percent: 0.17,
                            center: Text("20%"),
                            progressColor: PrimaryColor,
                          ),
                          SizedBox(height: 8),
                          const Text(
                            'Clothes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            '200 clothes/1000 clothes',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 93,
                            height: 30,
                            decoration: BoxDecoration(
                              color: gradient1,
                              // Background color of the container
                              border: Border.all(
                                color: Colors.white, // Border color
                                width: 1, // Border width
                              ),
                              borderRadius: BorderRadius.circular(
                                  10), // Optional: round the corners
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Plus Icon
                                Icon(
                                  Icons.add, // Plus icon
                                  color: Colors.white, // Icon color
                                  size: 16, // Size of the icon
                                ),
                                const SizedBox(width: 4),
                                // Space between icon and line
                                // Vertical Line
                                Container(
                                  width: 1, // Width of the line
                                  height: 16, // Height of the line
                                  color: Colors.white, // Line color
                                ),
                                const SizedBox(width: 4),
                                // Space between line and text
                                // Donate Text
                                Text(
                                  "Donate",
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize: 14, // Font size
                                    fontWeight: FontWeight.bold, // Text weight
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    const Text(
                      'Donation Amount',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    CustomzeWidget(),
                    SizedBox(width: 10,),
                    CustomzeWidget(),
                    SizedBox(width: 10,),
                    CustomzeWidget(),
                    SizedBox(width: 10,),
                    CustomzeWidget(),

                  ],),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 4,
                            color: gradient1,
                          ),
                          SizedBox(width: 5,),
                          Text("OR"),
                          SizedBox(width: 5,),
                          Container(
                            width: 150,
                            height: 4,
                            color: gradient1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(children: [
                    Container(
                      width: 260,
                      height: 56,
                      decoration: BoxDecoration(
                        color: gradient1,
                        // Background color of the container
                        borderRadius: BorderRadius.circular(
                            16), // Set border radius to 16
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: gradient1,
                          hintText: 'Enter Donation Amount',
                          hintStyle: TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 56,
                      width: 82,
                      decoration: BoxDecoration(
                        color: gradient1,
                        // Background color of the container
                        borderRadius: BorderRadius.circular(
                            16), // Set border radius to 16
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text("Add to \nDonation", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.5,
                        ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                      ),)


                  ],),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Food Donation",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold, // Font weight
                            color: Colors.black, // Text color
                            height: 1.5,
                          ),
                        ),
                        Image.asset(
                          Images.threeDots,
                          scale: 4,
                          color: progressColor,
                          // height: 40,
                        ),
                      ],),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: gradient1, // Set your desired background color
                      borderRadius: BorderRadius.circular(
                          10), // Set border radius
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              Images.image1,
                              scale: 4,

                              // height: 40,
                            ),
                            Image.asset(
                              Images.image1,
                              scale: 4,

                              // height: 40,
                            ),

                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              Images.image1,
                              scale: 4,

                              // height: 40,
                            ),
                            Container(
                              height:120 ,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Images.image1), // Replace with your image path

                                  scale: 4, // Adjust scale as needed
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '+3',
                                      style: TextStyle(fontSize: 50, color: Colors.white ,fontWeight: FontWeight.bold), // Customize text style
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],),
                      ],
                    ),

                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment Method",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold, // Font weight
                            color: Colors.black, // Text color
                            height: 1.5,
                          ),
                        ),
                        Image.asset(
                          Images.threeDots,
                          scale: 4,
                          color: progressColor,
                          // height: 40,
                        ),
                      ],),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 390,
                    height: 53,
                    decoration: BoxDecoration(
                      color: gradient1, // Use your actual progressColor here
                      borderRadius: BorderRadius.circular(10), // Border color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25), // Adjust opacity as needed
                          offset: Offset(0, 7), // Shadow offset
                          blurRadius: 4, // Blur radius
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25), // Inner shadow color
                          offset: Offset(0, 4), // Shadow offset for inner shadow
                          blurRadius: 4, // Blur radius for inner shadow
                          spreadRadius: -4, // Negative spread for inner shadow effect
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25), // Additional shadow color
                          offset: Offset(0, 4), // Shadow offset
                          blurRadius: 4, // Blur radius
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                              width: 40, // Width of the circle
                              height: 40, // Height of the circle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle, // Make it circular
                                border: Border.all(color: Colors.black), // Circle outline color
                              ),
                            ),
                            SizedBox(width: 10), // Spacing between the circle and text
                            Text(
                              "PayPal",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                          ],),
                          Text(
                            "PayPal",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 390,
                    height: 53,
                    decoration: BoxDecoration(
                      color: gradient1,
                      borderRadius: BorderRadius.circular(10), // Border color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 7), // Shadow offset
                          blurRadius: 4, // Blur radius
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: -4,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4, // Blur radius
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "PayPal",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                          ],),
                          Text(
                            "PayPal",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          width: 242,
                          height: 40,
                          decoration: BoxDecoration(
                            color: gradient1,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 7),
                                blurRadius: 4,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: -4,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4, // Blur radius
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Pay & Confirm Donation",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


   _buildButton(String label, bool isSelected) {
    return GestureDetector(
      onTap: () => _onButtonPressed(label),
      child: Container(
        width: 120,
        height: 36,
        decoration: BoxDecoration(
          color: isSelected ? gradient1 : Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold, // Bold text
            ),
          ),
        ),
      ),
    );
  }



  CustomzeWidget() {
    return Container(
      height: 82,
      width: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: progressColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -3,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          '&50',
          style: TextStyle(
            fontSize: 16, // Font size
            fontWeight: FontWeight.w600, // Font weight
            color: Colors.black, // Text color
          ),
        ),
      ),
    );
  }


}



