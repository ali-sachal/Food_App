import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

class CustomButton1 extends StatelessWidget {
  String? text;
  final onPressed;
  Color? boxcolor;
  Color? textcolor;
  CustomButton1({
    required this.text,
    required this.onPressed,
    this.boxcolor,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.all(5),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
          decoration: BoxDecoration(
              color: boxcolor ?? PrimaryColor,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [boxShadowOutide]),
          child: Text(
            "$text",
            style: style16B.copyWith(
                color: textcolor ?? whiteColor, fontSize: 10.sp),
          ),
        ),
      ),
    );
  }
}
