import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

class CustomGradientButton extends StatelessWidget {
  String? text;
  final onPressed;
  CustomGradientButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            // gradient: boxLinearGradeintRight,

            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [boxShadowOutide, boxShadow]),
        child: Text(
          "$text",
          style: style16B.copyWith(color: whiteColor),
        ),
      ),
    );
  }
}
