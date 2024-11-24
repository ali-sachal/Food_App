import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/screens/global_food/global_food_view_model.dart';

class UplaodRecipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalFoodViewModel(),
      child: Consumer<GlobalFoodViewModel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // showProfilePopup(context);
                        },
                        child: CircleAvatar(
                          radius: 30.r,
                          backgroundColor: PrimaryColor,
                          child: CircleAvatar(
                            radius: 25.sp,
                            backgroundImage: AssetImage(
                              Images.homeIcon,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(4.5),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: PrimaryColor, width: 2),
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.r,
                              spreadRadius: 4,
                              offset: Offset(0, 4.w),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          Images.homeScan,
                          scale: 4,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      GestureDetector(
                        onTap: () {
                          // menuButton(context, model);
                        },
                        child: Image.asset(
                          Images.homeMenu,
                          scale: 5,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        model.pickImage();
                      },
                      child: model.selectedImage == null
                          ? Image.asset(
                              Images.uploadCover,
                            )
                          : Container(
                              height: 200,
                              child: Center(
                                child: Image.file(
                                  model.selectedImage!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0, left: 8.0),
                    child: Text(
                      "Name",
                      style: style16B.copyWith(color: blackColor),
                    ),
                  ),
                  TextFormField(
                    decoration:
                        authFieldDecoration.copyWith(helperText: 'Recipt Name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 5.0, left: 8.0, top: 15.0),
                    child: Text(
                      "Description/Method",
                      style: style16B.copyWith(color: blackColor),
                    ),
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: authFieldDecoration.copyWith(
                        hintText: "Recipe Method..."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 5.0, left: 8.0, top: 15.0),
                    child: Text(
                      "Sub Ingredients",
                      style: style16B.copyWith(color: blackColor),
                    ),
                  ),
                  TextFormField(
                    decoration: authFieldDecoration.copyWith(
                        hintText: "Search Ingredients"),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _deatilsAdd(),
                      _deatilsAdd(),
                      _deatilsAdd(),
                      Container(
                        height: 71.h,
                        width: 71.w,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(width: 2.0, color: PrimaryColor),
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
                        ),
                        child: Icon(
                          Icons.add,
                          size: 40.sp,
                          color: PrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Cuisine",
                          style: style16B,
                        ),
                        showAll(onPressed: () {}, text: "Show All")
                      ],
                    ),
                  ),
                  Container(
                    height: 43.h,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            alignment: Alignment.center,
                            height: 43.h,
                            width: 99.w,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: PrimaryColor),
                              borderRadius: BorderRadius.circular(16.r),
                              color: index == 0 ? PrimaryColor : whiteColor,
                            ),
                            child: Text(
                              "Chinese",
                              style: style12B.copyWith(
                                  color: index == 0 ? whiteColor : greyColor),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [boxShadowOutide]),
                        child: Text(
                          "Uplaod Recipt",
                          style: style16B.copyWith(color: whiteColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// _pickImage

_deatilsAdd() {
  return Container(
    height: 71.h,
    width: 71.w,
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(10.r),
      image:
          DecorationImage(image: AssetImage(Images.cFood), fit: BoxFit.cover),
      border: Border.all(width: 2.0, color: PrimaryColor),
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
    ),
  );
}
