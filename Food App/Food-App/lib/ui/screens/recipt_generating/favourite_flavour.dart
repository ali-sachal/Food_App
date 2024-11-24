import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

class FavouriteFlovour extends StatefulWidget {
  const FavouriteFlovour({Key? key}) : super(key: key);

  @override
  State<FavouriteFlovour> createState() => _FavouriteFlovourState();
}

class _FavouriteFlovourState extends State<FavouriteFlovour> {
  List<String> FruitsandBerriesList = [
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
    Images.apple,
    Images.banana,
    Images.basil,
  ];
  List<String> title = [
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
    'Apple',
    'Banana',
    'Basil',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topHeader(context),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Select flavors (Add different flavors)",
                style: style14B.copyWith(color: PrimaryColor),
              ),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: FruitsandBerriesList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, mainAxisExtent: 100),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 54.h,
                          width: 54.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(248, 255, 30, 0)
                                  .withOpacity(0.20)),
                          child: Image.asset(
                            FruitsandBerriesList[index],
                            scale: 5,
                          )),
                      Text(
                        title[index],
                        style: style12N,
                      ),
                      Text(
                        "See Details",
                        style: style12B.copyWith(
                          color: Color(0XFFFFC520),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0XFFFFC520),
                        ),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}

_appBar() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: PrimaryColor),
    child: Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  Images.homeIcon,
                  height: 40,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Clara!",
                      style: TextStyle().w(6).s(13),
                    ),
                    Text(
                      "Enjoy Amazing Recipes...",
                      style: TextStyle().w(6).s(13),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  Images.homeScan,
                  scale: 3,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  Images.homeMenu,
                  scale: 5,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    ),
  );
}

_topHeader(context) {
  return Stack(
    children: [
      _appBar(),
      Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 90),
          height: 100,
          width: MediaQuery.sizeOf(context).width * 0.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(Images.CakeImage), fit: BoxFit.cover)),
          child: Text(
            "Fruits and\nBerries",
            textAlign: TextAlign.center,
            style: style16B.copyWith(color: whiteColor, fontSize: 20),
          ),
        ),
      ),
    ],
  );
}
