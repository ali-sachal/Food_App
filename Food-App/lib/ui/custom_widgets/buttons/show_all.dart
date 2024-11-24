import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';

showAll({required VoidCallback onPressed, required String text}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: PrimaryColor,
      ),
      child: Text("$text"),
    ),
  );
}
