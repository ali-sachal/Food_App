import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

final authFieldDecoration = InputDecoration(
  hintText: "",
  hintStyle: style16N,
  prefixIconColor: whiteColor,
  suffixIconColor: whiteColor,
  fillColor: PrimaryColor,
  filled: true,
  // contentPadding: const EdgeInsets.all(25),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: PrimaryColor, width: 0.0.w),
      borderRadius: BorderRadius.circular(14.r)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: PrimaryColor, width: 0.0.w),
      borderRadius: BorderRadius.circular(14.r)),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: PrimaryColor, width: 0.0.w),
      borderRadius: BorderRadius.circular(16)),
  disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: PrimaryColor, width: 0.0.w),
      borderRadius: BorderRadius.circular(14.r)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: PrimaryColor, width: 0.0.w),
      borderRadius: BorderRadius.circular(14.r)),
);
