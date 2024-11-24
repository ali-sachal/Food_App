import 'package:flutter/material.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';

customizable_recipies(BuildContext context) {
  return Column(
    children: [
      Center(
        child: Text(
          "Customizable Recipes",
          style: TextStyle().w(7),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      gridView(context),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}

gridView(BuildContext context) {
  return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 350),
      itemBuilder: (context, index) {
        // final item = items[index];
        return Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: PrimaryColor),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    "assets/images/grilled.png",
                    fit: BoxFit.cover,
                    height: 107,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: progressColor),
                      child: Image.asset(
                        "assets/icons/edit.png",
                        scale: 3,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Grilled Skirt Steak",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$40",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/steak.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Skirt Steak",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Text(
                        "1 Pound",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              )
            ],
          ),
        );
      });
}
