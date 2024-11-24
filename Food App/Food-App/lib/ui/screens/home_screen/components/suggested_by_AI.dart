import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

suggestedByAI(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: "suggested by ",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(text: "AI", style: TextStyle(color: PrimaryColor))
        ])),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: gradient1.withOpacity(0.70),
            prefixIcon: const Icon(
              Icons.search,
              color: whiteColor,
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(color: whiteColor),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 180),
            itemBuilder: (context, index) {
              final item = items[index];
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: boxLinearGradeint,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Image.asset(
                      item['image']!,
                      height: 107,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 41,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.outer,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                                blurRadius: 4)
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          item["name"]!,
                          style: TextStyle(
                            color: PrimaryColor,
                          ),
                        ),
                      ))
                ],
              );
            })
      ],
    ),
  );
}

final List<Map<String, String>> items = [
  {
    'name': 'Chicken Skewers',
    'image': "assets/images/chicken_skewer.png",
  },
  {
    'name': 'Potato Pancakes',
    'image': "assets/images/potato_pancakes.png",
  },
  {
    'name': 'Gourmet Sandwich',
    'image': "assets/images/gormat_sandwich.png",
  },
  {
    'name': 'Fresh Pasta',
    'image': "assets/images/fresh_past.png",
  },
  {
    'name': 'Freshi Testy Burger',
    'image': "assets/images/fresh_tasty_burger.png",
  },
  {
    'name': 'Indian Mutton Biryani',
    'image': "assets/images/indian_mutton_biryani.png",
  },
  {
    'name': 'Mexican Tacos',
    'image': "assets/images/maxicon_tacos.png",
  },
  {
    'name': 'Grilled Pork',
    'image': "assets/images/grilled_pork.png",
  },
];
