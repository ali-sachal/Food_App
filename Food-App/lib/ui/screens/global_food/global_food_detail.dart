import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/search_field.dart';
import 'package:security_gdpr/ui/screens/global_food/ProductsMarketScreen.dart';

class GlobalFoodDetail extends StatefulWidget {
  const GlobalFoodDetail({super.key});

  @override
  State<GlobalFoodDetail> createState() => _GlobalFoodDetailState();
}

class _GlobalFoodDetailState extends State<GlobalFoodDetail>
    with TickerProviderStateMixin {
  void _showSnackBar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Video playing failed...'),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Image.asset(Images.globalFoodBG),
              Positioned(
                top: 30,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Images.homeIcon,
                      height: 40,
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
              ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: AnimationLimiter(
                      child: AnimationConfiguration.synchronized(
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          verticalOffset: -50.0,
                          child: FadeInAnimation(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Sweden',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Discover the significance of seasonal ingredients, the art of\npreserving heritage recipes, and the warmth of Swedish\nhospitality that infuses every meal.',
                                    style: const TextStyle().w(4).s(11),
                                  ),
                                  const SizedBox(height: 15),
                                  customSearchField(
                                      hintText:
                                          'Search different recipes, videos...'),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "   Swedish Recipes",
                                        style: const TextStyle()
                                            .s(14)
                                            .w(6)
                                            .cl(PrimaryColor),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: PrimaryColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Show All",
                                          style: const TextStyle()
                                              .w(6)
                                              .s(12)
                                              .cl(PrimaryColor),
                                        )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        var crossAxisCount =
                                            constraints.maxWidth < 600 ? 2 : 4;
                                        return GridView.builder(
                                          padding: EdgeInsets.zero,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: crossAxisCount,
                                            crossAxisSpacing: 8.0,
                                            mainAxisSpacing: 8.0,
                                            childAspectRatio: 2 / 2,
                                          ),
                                          itemBuilder: (context, index) {
                                            return _swedishRecipes();
                                          },
                                          itemCount: 2,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "   Video",
                                        style: const TextStyle()
                                            .s(14)
                                            .w(6)
                                            .cl(PrimaryColor),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: PrimaryColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Show All",
                                          style: const TextStyle()
                                              .w(6)
                                              .s(12)
                                              .cl(PrimaryColor),
                                        )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  GestureDetector(
                                      onTap: () => _showSnackBar(context),
                                      child: Image.asset(Images.gVideoCover)),
                                  const SizedBox(height: 20),
                                  const Center(
                                    child: Text(
                                      'Products Market',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "   Domestic Markets",
                                        style: const TextStyle()
                                            .s(14)
                                            .w(6)
                                            .cl(PrimaryColor),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductsMarketScreen()));
                                        },
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(right: 15),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: PrimaryColor),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                              child: Text(
                                            "Show All",
                                            style: const TextStyle()
                                                .w(6)
                                                .s(12)
                                                .cl(PrimaryColor),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        var crossAxisCount =
                                            constraints.maxWidth < 600 ? 2 : 4;
                                        return GridView.builder(
                                          padding: EdgeInsets.zero,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: crossAxisCount,
                                            crossAxisSpacing: 8.0,
                                            mainAxisSpacing: 8.0,
                                            childAspectRatio: 2 / 2,
                                          ),
                                          itemBuilder: (context, index) {
                                            return _domesticRecipes();
                                          },
                                          itemCount: 2,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "   International Markets",
                                        style: const TextStyle()
                                            .s(14)
                                            .w(6)
                                            .cl(PrimaryColor),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: PrimaryColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Show All",
                                          style: const TextStyle()
                                              .w(6)
                                              .s(12)
                                              .cl(PrimaryColor),
                                        )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        var crossAxisCount =
                                            constraints.maxWidth < 600 ? 2 : 4;
                                        return GridView.builder(
                                          padding: EdgeInsets.zero,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: crossAxisCount,
                                            crossAxisSpacing: 8.0,
                                            mainAxisSpacing: 8.0,
                                            childAspectRatio: 2 / 2,
                                          ),
                                          itemBuilder: (context, index) {
                                            return _internationalMarkets();
                                          },
                                          itemCount: 2,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "   Popular  Markets",
                                        style: const TextStyle()
                                            .s(14)
                                            .w(6)
                                            .cl(PrimaryColor),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: PrimaryColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "Show All",
                                          style: const TextStyle()
                                              .w(6)
                                              .s(12)
                                              .cl(PrimaryColor),
                                        )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        var crossAxisCount =
                                            constraints.maxWidth < 600 ? 2 : 4;
                                        return GridView.builder(
                                          padding: EdgeInsets.zero,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: crossAxisCount,
                                            crossAxisSpacing: 8.0,
                                            mainAxisSpacing: 8.0,
                                            childAspectRatio: 2 / 2,
                                          ),
                                          itemBuilder: (context, index) {
                                            return _swedishRecipes();
                                          },
                                          itemCount: 2,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Swedish Recipes >>>>
  _swedishRecipes() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              Images.donate1,
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pytt i Panna',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: PrimaryColor,
                          size: 18,
                        ),
                        const Text(
                          '4.9 (1k+ Reviews)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Domestic Recipes >>>>
  _domesticRecipes() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              Images.domesticRecipe,
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Knystaforsen',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(height: 5),
                    Text(
                      'Rydöbruk, Sweden',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// InternationalMarkets >>>>
  _internationalMarkets() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              Images.internationalMarket,
              // height: 15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Asador Etxebarri',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(height: 5),
                    Text(
                      'Bizkaia, Spain',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
