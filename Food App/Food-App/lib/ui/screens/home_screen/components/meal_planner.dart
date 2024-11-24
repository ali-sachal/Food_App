import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

mealPlanner1(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            //margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: PrimaryColor)),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 10,
              color: PrimaryColor,
            ),
          ),
          Text(
            "Today,28 Oct",
            style: TextStyle(color: PrimaryColor),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            //margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: PrimaryColor)),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 10,
              color: PrimaryColor,
            ),
          )
        ],
      ),
      const SizedBox(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button("Break fast", PrimaryColor, Colors.white),
          button("Lunch", Colors.white, PrimaryColor),
          button("Snack", Colors.white, PrimaryColor),
          button("Dinner", Colors.white, PrimaryColor),
        ],
      ),
      ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final inventoryItem = items[index];
            return Container(
              padding: const EdgeInsets.all(8),
              // height: 102,
              margin: const EdgeInsets.all(8),
              decoration: boxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    inventoryItem["image"]!,
                    width: 115,
                    height: 87,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            inventoryItem["name"]!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: PrimaryColor)),
                    child: Icon(
                      Icons.add,
                      color: PrimaryColor,
                    ),
                  )
                ],
              ),
            );
          }),
    ],
  );
}

button(text, color, txtClr) {
  return Expanded(
    child: Container(
      height: 35,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: PrimaryColor)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: txtClr),
        ),
      ),
    ),
  );
}

final List<Map<String, String>> items = [
  {
    'name': 'Milk Tea',
    'image': "assets/images/milktea.png",
  },
  {
    'name': 'Egg Pasta',
    'image': "assets/images/eggpasta.png",
  },
];
