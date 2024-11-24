import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/core/constant/text_style.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/show_all.dart';
import 'package:security_gdpr/ui/screens/recipt_generating/choose_view_model.dart';

class StepByStepGuiding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ChooseViewModel.initialize(),
      child: Consumer<ChooseViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Column(
              children: [
                ///
                /// Top Header
                ///
                _topHeader(context),

                ///
                /// Videos
                ///
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Videos",
                        style: style16B,
                      ),
                      showAll(onPressed: () {}, text: 'Show All'),
                    ],
                  ),
                ),

                ///
                /// Video player
                ///
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 300,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                          width: 187.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.transparent,
                          ),
                          child: model.flickManager.flickVideoManager
                                      ?.isVideoInitialized ??
                                  false
                              ? MyCustomFlickPlayer(
                                  flickManager: model.flickManager)
                              : Center(
                                  child: CircularProgressIndicator(
                                    color: PrimaryColor,
                                  ),
                                ),
                        ),
                      );
                    },
                  ),
                ),

                ///
                /// Step-By-Step Guide
                ///
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Step-By-Step Guide",
                      style: style16B.copyWith(color: blackColor),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Step - 1",
                        style: style16B,
                      ),
                      Text(
                        "Stand with feet a about shoulder-width apart, toes facing front.",
                        style: style14B.copyWith(color: Color(0xff777777)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Step - 1",
                        style: style16B,
                      ),
                      Text(
                        "Stand with feet a about shoulder-width apart, toes facing front.",
                        style: style14B.copyWith(color: Color(0xff777777)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Step - 1",
                        style: style16B,
                      ),
                      Text(
                        "Stand with feet a about shoulder-width apart, toes facing front.",
                        style: style14B.copyWith(color: Color(0xff777777)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
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
            "Squat",
            style: style16B.copyWith(color: whiteColor, fontSize: 35),
          ),
        ),
      ),
    ],
  );
}

class MyCustomFlickPlayer extends StatelessWidget {
  final FlickManager flickManager;

  MyCustomFlickPlayer({required this.flickManager});

  @override
  Widget build(BuildContext context) {
    return FlickVideoPlayer(
      flickManager: flickManager,
      flickVideoWithControls: FlickVideoWithControls(
        controls: FlickAutoHideChild(
          showIfVideoNotInitialized: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(''),
                Center(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: whiteColor.withOpacity(0.70),
                          shape: BoxShape.circle),
                      child: FlickPlayToggle(size: 30, color: PrimaryColor)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(Images.homeIcon),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Navile M.",
                            style: style16B.copyWith(color: PrimaryColor),
                          ),
                          Text(
                            "Sweden",
                            style: style12B.copyWith(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        videoFit: BoxFit.cover,
        aspectRatioWhenLoading: 16 / 9,
      ),
    );
  }
}
