import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/custom_widgets/image_containers/image_banner.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/live_cockingevents.dart';

class MasterChef extends StatelessWidget {
  const MasterChef({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(children: [
              Image.asset("assets/images/master_chef.png"),
              Positioned(
                  bottom: 0,
                  child: Container(
                      height: size.height / 1.4,
                      width: size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(4, 0),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Erik T.",
                                    style: TextStyle()
                                        .w(7)
                                        .cl(progressColor)
                                        .s(30),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: PrimaryColor),
                                    padding: EdgeInsets.all(9),
                                    child: Text(
                                      "Follow",
                                      style: TextStyle().cl(whiteColor),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                  "Welcome to my Account. I will provide you best recipes and will answer your each question also during my live streams. Enjoy delicious time while you are here."),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/person.png",
                                        scale: 3,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "3.6k Followers",
                                        style: TextStyle().s(12),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/recipe.png",
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "322 Recipies",
                                        style: TextStyle().s(12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              custom_row(
                                  context, "Recent Events", progressColor),
                              ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return masterChef_containerWidgets();
                                  }),
                              SizedBox(
                                height: 15,
                              ),
                              custom_row(
                                  context, "Shedule Events", progressColor),
                              SizedBox(
                                height: 15,
                              ),
                              masterChef_containerWidgets(),
                              SizedBox(
                                height: 15,
                              ),
                              custom_row(context, "Resturent", blackColor),
                              SizedBox(
                                height: 15,
                              ),
                              resipeGridview(context),
                              SizedBox(
                                height: 15,
                              ),
                              custom_row(context, "Premium Recipes By Chef",
                                  progressColor),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 265.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/flower.png"),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                              "assets/images/popular.png"),
                                          Image.asset("assets/images/save.png")
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Price: \$50.00",
                                            style: TextStyle()
                                                .cl(whiteColor)
                                                .s(18),
                                          ),
                                          CustomButton(
                                              text: "Order Now",
                                              onPressed: () {})
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Cured Salomen",
                                    style:
                                        TextStyle().w(7).s(16).cl(blackColor),
                                  ),
                                  Image.asset("assets/images/rat.png")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "Cured salmon, known as ’gravlax’ in Swedish cuisine, is a traditional dish that beautifully combines simplicity with exquisite flavors."),
                              SizedBox(
                                height: 15,
                              ),
                              custom_row(context, "Shorts Feed", progressColor),
                              SizedBox(
                                height: 330,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                        width: 150,
                                        height: 319,
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Image.asset(
                                                "assets/images/reel_img.png"),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 20, left: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/icons/like.png",
                                                    width: 20,
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "627",
                                                    style: TextStyle()
                                                        .cl(progressColor)
                                                        .w(7),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      width: 10,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              custom_row(context, "Post", progressColor),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                alignment: Alignment.topLeft,
                                height: 295,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/post.png"))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: whiteColor),
                                      child:
                                          Image.asset("assets/icons/love.png"),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: whiteColor),
                                      child: Image.asset(
                                          "assets/icons/texting.png"),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Connect with Master Chef",
                                      style: TextStyle()
                                          .s(16)
                                          .w(7)
                                          .cl(progressColor)),
                                  Icon(
                                    Icons.more_vert,
                                    color: progressColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/erik.png",
                                    width: 125,
                                    height: 125,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Erik T.",
                                        style: TextStyle()
                                            .cl(blackColor)
                                            .w(7)
                                            .s(24),
                                      ),
                                      Text(
                                        "Swedan.",
                                        style: TextStyle()
                                            .cl(greyColor)
                                            .w(7)
                                            .s(18),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/icons/person.png",
                                            scale: 1.5,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "3.6K Followers",
                                            style: TextStyle()
                                                .cl(greyColor)
                                                .s(16)
                                                .w(7),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                    "Meet Chef Erik, a culinary virtuoso whose passion for food knows no bounds. With decades of experience and a relentless dedication to his craft, Chef Erik has earned a reputation as a master of the culinary arts."),
                              ),
                              EasyDateTimeLine(
                                activeColor: PrimaryColor,
                                initialDate: DateTime.now(),
                                onDateChange: (selectedDate) {
                                  //`selectedDate` the new date selected.
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Avalable Slots",
                                    style:
                                        TextStyle().s(16).w(7).cl(blackColor),
                                  ),
                                  Text(
                                    "(Available from 12:00 P.M to 6:00 P.M)",
                                    style: TextStyle().s(12).cl(greyColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        " Time Slot",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          //fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        // width: MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        decoration: BoxDecoration(
                                            color: PrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "1:00 P.M - 3:00 P.M",
                                              style: TextStyle(
                                                color: Color(0xfff777777),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_rounded,
                                              color: Color(0xfff777777),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Fee",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            "(Per Hour)",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xfff777777),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        // width: MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        decoration: BoxDecoration(
                                            color: PrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$50",
                                              style: TextStyle().cl(
                                                Color(0xfff777777),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_rounded,
                                              color: Color(0xfff777777),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              custom_textfeild(
                                  context, "Total Fee", "\$100 (2 Hours)"),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Payment Method:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: blackColor,
                                        fontSize: 16),
                                  )),
                              RadioButton(),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CustomButton(
                                    text: "Book My Time", onPressed: () {}),
                              )
                            ],
                          ),
                        ),
                      )))
            ])));
  }
}

masterChef_containerWidgets() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    decoration: boxDecoration,
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageBanner(
          icon: "assets/icons/person.png",
          text: "227",
          image: "assets/images/delicious_time.png",
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Live Cocking Events",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Date: 11-05-2024",
              style: TextStyle(color: Color(0xfff777777)),
            ),
            Text(
              "Time: 10:00 A.M",
              style: TextStyle(color: Color(0xfff777777)),
            ),
            Text(
              "Stream Started: 1h 23 mins age",
              style: TextStyle(color: Color(0xfff777777)),
            ),
          ],
        ),
      ],
    ),
  );
}

custom_row(BuildContext context, String txt, Color txtClr) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(txt, style: TextStyle(color: txtClr, fontSize: 16)),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: PrimaryColor),
        padding: EdgeInsets.all(6),
        child: Text(
          "Show All",
          style: TextStyle().cl(blackColor).w(7),
        ),
      )
    ],
  );
}

resipeGridview(BuildContext context) {
  return Container(
    decoration: BoxDecoration(color: PrimaryColor),
    // height: MediaQuery.of(context).size.height / 5,
    child: LayoutBuilder(
      builder: (context, constraints) {
        var crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
        return GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 2 / 2,
          ),
          itemBuilder: (context, index) {
            return MasterChefResturentsGridView();
          },
          itemCount: 2,
        );
      },
    ),
  );
}

/// RecipeItems >>>>
class MasterChefResturentsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/recipe.png",
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Asador Etxebarri',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    Text('Spain',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

custom_textfeild(BuildContext context, String name, String txtfeild_name) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 15,
      ),
      Text(
        name,
        style: TextStyle().s(16).cl(Colors.black).w(7),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Text(
          txtfeild_name,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xfff777777),
          ),
        ),
      )
    ],
  );
}

enum SingingCharacter { paypal, stripe }

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioButton> {
  SingingCharacter? _character = SingingCharacter.paypal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: [
            Radio<SingingCharacter>(
              activeColor: PrimaryColor,
              value: SingingCharacter.paypal,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Image.asset(
              "assets/images/paypal.png",
              scale: 4,
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            Radio<SingingCharacter>(
              activeColor: PrimaryColor,
              value: SingingCharacter.stripe,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Image.asset(
              "assets/images/stripe.png",
              scale: 4,
            ),
          ],
        )
      ],
    );
  }
}
