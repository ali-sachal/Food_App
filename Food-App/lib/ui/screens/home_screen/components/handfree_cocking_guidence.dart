import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

handsfree_cocking_guidence(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        height: 10,
      ),
      const Center(
        child: Text(
          "(AR) Hands-free coocking guidance",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: 244,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage("assets/images/thumbnail3.png"))),
        child: Center(
          child: Image.asset(
            "assets/icons/play_button.png",
            height: 60,
            width: 60,
          ),
        ),
      ),
      Container(
        height: 240,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: boxDecoration,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Vision API aur Augmented Reality",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(text: "Scan Recipt", onPressed: () {}),
            const SizedBox(
              height: 10,
            ),
            CustomButton(text: "Scan Food Product", onPressed: () {})
          ],
        ),
      )
    ],
  );
}
