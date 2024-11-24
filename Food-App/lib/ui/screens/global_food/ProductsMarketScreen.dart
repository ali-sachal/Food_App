import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/live_cockingevents.dart';
import 'package:security_gdpr/ui/screens/recipt_generating/favourite_flavour.dart';

class ProductsMarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Images.homeIcon,
                    height: 40,
                  ),
                  Text(
                    "Domestic Market",
                    style: const TextStyle().w(6).s(13),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Images.homeScan,
                        height: 40,
                      ),
                      const SizedBox(width: 5),
                      Image.asset(
                        Images.homeMenu,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _topImage(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: style16B.copyWith(color: PrimaryColor),
                  ),
                  showAll(onPressed: () {}, text: "Show All"),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              _categories(),
              SizedBox(
                height: 20.h,
              ),

              ///
              /// Popular Categories
              ///
              Text(
                "Popular Categories",
                style: style16B,
              ),

              Container(
                height: 400,
                child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 2 / 2,
                  ),
                  itemBuilder: (context, index) {
                    return ResturentsGridView();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_categories() {
  return Row(
    children: [
      Container(
          height: 272.h,
          width: 185.w,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(Images.Drink), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vegetables",
                style: style16B.copyWith(color: whiteColor, fontSize: 22),
              ),
              Text(
                "Fresh Vegetables",
                style: style14B.copyWith(color: whiteColor),
              ),
            ],
          )),
      SizedBox(
        width: 10.h,
      ),
      Expanded(
        child: Column(
          children: [
            Container(
                height: 126.h,
                width: 185.w,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(Images.vegetables),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spices",
                      style: style16B.copyWith(color: whiteColor, fontSize: 22),
                    ),
                    Text(
                      "Spice for each Recipe",
                      style: style14B.copyWith(color: whiteColor),
                    ),
                  ],
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
                height: 126.h,
                width: 185.w,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(Images.spicies), fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Drinks",
                      style: style16B.copyWith(color: whiteColor, fontSize: 22),
                    ),
                    Text(
                      "Different Drinks for different Seasons",
                      style: style14B.copyWith(color: whiteColor),
                    ),
                  ],
                ))
          ],
        ),
      ),
    ],
  );
}

_topImage() {
  return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(Images.domestic), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Knystaforsen",
            style: style16B.copyWith(color: blackColor),
          ),
          Text(
            "Rydöbruk, Sweden",
            style: style14N.copyWith(color: blackColor),
          ),
        ],
      ));
}
