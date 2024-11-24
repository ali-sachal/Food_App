import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

recipeComments(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Center(
        child: Text(
          "Recipe Comments",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Grilled Skirt Steak",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: progressColor),
              ),
              Image.asset(
                "assets/icons/location2.png",
                width: 24,
                height: 24,
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/skirt.png"))),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/p1.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Master Chef",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: progressColor),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icons/share_icon.png",
                scale: 5,
              ),
              Image.asset(
                "assets/icons/coment.png",
                scale: 5,
              ),
              Image.asset(
                "assets/icons/like_unfilled.png",
                scale: 5,
              )
            ],
          )
        ],
      ),
      ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              decoration: boxDecoration,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/p1.png",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Master Chef",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the"),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 5),
      SizedBox(
        height: 15,
      ),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryColor,
          suffixIcon: Container(
            //padding: EdgeInsets.all(),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Icon(Icons.arrow_upward, color: Colors.white),
          ),
          hintText: 'Message',
          hintStyle: TextStyle(color: Color(0xfff777777)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
