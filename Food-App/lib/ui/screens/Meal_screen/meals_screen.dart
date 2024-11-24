import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/auth_text_field.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';

class MealsScreen extends StatefulWidget {
  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Add a listener to call setState when the tab index changes
    _tabController?.addListener(() {
      setState(() {}); // Rebuilds the widget when the tab index changes
    });
  }

  @override
  void dispose() {
    _tabController?.removeListener(() {}); // Remove the listener
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Images.cFood), fit: BoxFit.cover)),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.75,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Breakfast",
                style: style16B.copyWith(fontSize: 25.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: authFieldDecoration.copyWith(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: style16B.copyWith(color: whiteColor)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily Intake",
                    style: style14B.copyWith(color: PrimaryColor),
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    size: 25.sp,
                    color: blackColor,
                  ),
                ],
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  "Carbohydrates",
                                  style: const TextStyle().w(700),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "160",
                                  style: const TextStyle().w(700),
                                ),
                                const Text(
                                  "/250",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          LinearPercentIndicator(
                            progressColor: PrimaryColor,
                            barRadius: const Radius.circular(12),
                            percent: 0.3,
                          )
                        ],
                      ),
                    );
                  }),
              TabBar(
                controller: _tabController,
                labelColor: PrimaryColor,
                indicatorColor: Colors.yellow.shade700,
                unselectedLabelColor: greyColor,
                tabs: [
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/added.png"),
                      color:
                          _tabController?.index == 0 ? PrimaryColor : greyColor,
                      size: 24,
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/Favourite.png"),
                      color:
                          _tabController?.index == 1 ? PrimaryColor : greyColor,
                      size: 24,
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/addimage.png"),
                      color:
                          _tabController?.index == 2 ? PrimaryColor : greyColor,
                      size: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
