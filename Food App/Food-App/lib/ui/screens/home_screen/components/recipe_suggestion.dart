import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

recipeSuggestion(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Recipe Suggestions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: PrimaryColor)),
              child: Image.asset(
                "assets/icons/qrcode.png",
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: PrimaryColor)),
              child: Image.asset(
                "assets/icons/load.png",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CustomButton(text: "Receipt Generation", onPressed: () {})
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 151,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/blur_burger.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/scan2.png",
                width: 93,
                height: 93,
              ),
              Text(
                "Scan",
                style: TextStyle(
                    decorationColor: PrimaryColor,
                    decoration: TextDecoration.underline,
                    color: PrimaryColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Scan Available products for delicious recipe suggestions",
          textAlign: TextAlign.center,
          style: TextStyle(
              decorationColor: PrimaryColor,
              decoration: TextDecoration.underline,
              color: const Color(0xFFFEBC6A)),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          //width: 390,
          height: 445,
          decoration: boxDecoration,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 190),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/delicious_burger.png",
                          scale: 4,
                        ),
                      ),
                      const Text(
                        "Indian",
                        style:
                            TextStyle(color: Color(0xFFFFC520), fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(color: Colors.black, fontSize: 6),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "4.2",
                            style: TextStyle(
                                color: Color(0xFFF777777), fontSize: 6),
                          ),
                          Icon(
                            Icons.star,
                            color: PrimaryColor,
                            size: 6,
                          ),
                          Image.asset(
                            "assets/icons/clock.png",
                            color: const Color(0xFFF7777777),
                            scale: 7,
                          ),
                          const Text(
                            "25-35 mins",
                            style: TextStyle(
                                color: Color(0xFFF777777), fontSize: 6),
                          ),
                          Image.asset(
                            "assets/icons/bike.png",
                            scale: 3,
                          ),
                          const Text(
                            "Free Delivery",
                            style: TextStyle(
                                color: Color(0xFFF777777), fontSize: 6),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    ),
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
