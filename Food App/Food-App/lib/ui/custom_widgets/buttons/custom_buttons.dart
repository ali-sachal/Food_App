import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

class CustomButton extends StatelessWidget {
  String? text;
  final onPressed;
  CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: progressColor,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [boxShadowOutide]),
        child: Text(
          "$text",
          style: style16B.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
