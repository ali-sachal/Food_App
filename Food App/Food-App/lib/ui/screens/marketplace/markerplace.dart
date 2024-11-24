import 'package:flutter/material.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';

marketPlace(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 30),
      Center(
        child: Text(
          "Marketplace",
          style: TextStyle().s(15).w(6),
        ),
      ),
      SizedBox(height: 20),
      Container(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: PrimaryColor,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      SizedBox(height: 15),
      Container(
        padding: EdgeInsets.all(10),
        color: PrimaryColor,
        child: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          child: LayoutBuilder(
            builder: (context, constraints) {
              var crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
              return gridView(context);
              // return GridView.builder(
              //   padding: EdgeInsets.zero,
              //   physics: NeverScrollableScrollPhysics(),
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: crossAxisCount,
              //     crossAxisSpacing: 8.0,
              //     mainAxisSpacing: 8.0,
              //     childAspectRatio: 2 / 2,
              //   ),
              //   itemBuilder: (context, index) {
              //     return MarketPlaceItems();
              //   },
              //   itemCount: 6,
              // );
            },
          ),
        ),
      ),
      SizedBox(height: 25),
    ],
  );
}

/// MarketPlaceItems >>>>
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                Images.chickenSkewers,
                // height: 15,
              ),
            ),
            SizedBox(height: 12.0),
            Center(
              child: Text(
                'Chicken skewers',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

gridView(BuildContext context) {
  return GridView.builder(
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
                      color: Colors.black,
                    ),
                  ),
                ))
          ],
        );
      });
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
