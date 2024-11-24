// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///    *******************************          ****************************************
///    *******************************  Colors  ****************************************
///    *******************************          ****************************************

const Color primaryColorWithOpacity = Color(0xfffbb44b);

Color PrimaryColor = primaryColorWithOpacity.withOpacity(0.70);

const Color gradient2 = Color(0xffffc988);
const Color gradient1 = Color(0xffffc47e);
const Color secondColor = Color(0xFFA722B2);
const Color whiteColor = Color(0xffffffff);
const Color blackColor = Color(0xff000000);
const Color greyColor = Color(0xff777777);
const Color AiBoxColor = Color(0xffF8F8F8);
const Color progressColor = Color(0xFFFFA722);

///    *******************************                 ****************************************
///    ******************************* Linear Gradient  ****************************************
///    *******************************                 ****************************************

const LinearGradient boxLinearGradeint = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomLeft,
    colors: [
      gradient1,
      whiteColor,
    ]);

LinearGradient boxLinearGradeintRight = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      PrimaryColor,
      whiteColor,
    ]);

const LinearGradient boxLinearGradeintTransparent = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Colors.transparent,
      Colors.transparent,
    ]);

///    *******************************          ****************************************
///    ******************************* Box Decoration ****************************************
///    *******************************          ****************************************

Decoration boxDecoration = BoxDecoration(
  gradient: boxLinearGradeint,
  // color: Colors.white,
  borderRadius: BorderRadius.circular(10.r),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 10.r,
      offset: Offset(0, 4.w),
    ),
  ],
);

Decoration boxDecorationButton = BoxDecoration(
  color: PrimaryColor,
  borderRadius: BorderRadius.circular(10.r),
  boxShadow: [
    BoxShadow(
      color: blackColor.withOpacity(0.10),
      blurRadius: 2.r,
      offset: Offset(0, -2.w),
    ),
    BoxShadow(
      color: blackColor.withOpacity(0.25),
      blurRadius: 2.r,
      offset: Offset(0, 3.w),
    ),
  ],
);

///    *******************************          ****************************************
///    ******************************* Box Shadow ****************************************
///    *******************************          ****************************************

BoxShadow boxShadow = BoxShadow(
    color: blackColor.withOpacity(0.10),
    blurRadius: 4.r,
    offset: Offset(0, -4.w),
    spreadRadius: 0);

BoxShadow boxShadowOutide = BoxShadow(
    color: blackColor.withOpacity(0.25),
    blurRadius: 4.r,
    offset: Offset(0, 4.w),
    spreadRadius: 0);
