import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

reciptTitle(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0, left: 8.0),
        child: Text(
          "Recipt Title",
          style: style16B.copyWith(color: blackColor),
        ),
      ),
      TextFormField(
        decoration: authFieldDecoration,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0, left: 8.0, top: 15.0),
        child: Text(
          "Recipe Related Tags",
          style: style16B.copyWith(color: blackColor),
        ),
      ),
      TextFormField(
        decoration: authFieldDecoration,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0, left: 8.0, top: 15.0),
        child: Text(
          "Recipe Related Discription",
          style: style16B.copyWith(color: blackColor),
        ),
      ),
      TextFormField(
        maxLines: 5,
        decoration: authFieldDecoration.copyWith(),
      ),
      SizedBox(
        height: 20.h,
      ),
      CustomButton(text: "Uplaod", onPressed: () {}),
      SizedBox(
        height: 20.h,
      ),
    ],
  );
}
