import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

inventoryForRecipe(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Inventory for Recipes",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: PrimaryColor)),
              child: Text(
                "Show All",
                style: TextStyle(color: PrimaryColor),
              ),
            )
          ],
        ),
      ),
      ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            final inventoryItem = items[index];
            return Container(
              padding: const EdgeInsets.all(8),
              // height: 102,
              margin: const EdgeInsets.all(8),
              decoration: boxDecoration,
              child: Row(
                children: [
                  Image.asset(
                    inventoryItem['image']!,
                    width: 115,
                    height: 87,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            inventoryItem['name']!,
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Text(
                                inventoryItem['rating']!,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/clock.png",
                            scale: 4,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("20-25 mins"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            inventoryItem['km']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          })
    ],
  );
}

final List<Map<String, String>> items = [
  {
    'name': 'Burger King',
    'image': "assets/images/burger.png",
    'rating': '4.5',
    'km': '. 8km',
  },
  {
    'name': 'Pizzania',
    'image': "assets/images/pizza.png",
    'rating': '4.6',
    'km': '. 7km',
  },
  {
    'name': 'Pancake',
    'image': "assets/images/pancake.png",
    'rating': '4.2',
    'km': '. 8km',
  },
];
