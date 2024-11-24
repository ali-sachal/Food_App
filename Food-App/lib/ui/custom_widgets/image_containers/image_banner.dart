import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

class ImageBanner extends StatelessWidget {
  final String? image;
  final String? icon;
  final String? text;
  const ImageBanner({super.key, this.image, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      fit: StackFit.loose,
      alignment: Alignment.topRight,
      children: [
        Image.asset(
          "$image",
          height: 100,
          width: 100,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "assets/icons/new.png",
          ))),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "$icon",
                  width: 10,
                  height: 10,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "$text",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: PrimaryColor),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
