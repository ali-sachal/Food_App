import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';

class CommunityDetail extends StatefulWidget {
  const CommunityDetail({super.key});

  @override
  State<CommunityDetail> createState() => _CommunityDetailState();
}

class _CommunityDetailState extends State<CommunityDetail>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
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
              Image.asset(Images.communityBg),
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
                  height: size.height / 1.33,
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
                      padding: const EdgeInsets.all(15.0),
                      child: AnimationLimiter(
                        child: AnimationConfiguration.synchronized(
                          duration: const Duration(milliseconds: 500),
                          child: SlideAnimation(
                            verticalOffset: -50.0,
                            child: FadeInAnimation(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Captain Cooks',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: PrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Text(
                                          "Join",
                                          style: TextStyle().cl(Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Welcome abroad Captain Cooks, where Culinary enthusiasts\nof all levels to come together to embark on a flavorful journey\nthrough the world of cooking.  ',
                                    style: const TextStyle().w(4).s(9),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Images.cMember,
                                        // height: 40,
                                      ),
                                      Text(
                                        '  2.1k Members',
                                        style: const TextStyle().w(4).s(12),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Image.asset(
                                        Images.cRecipe,
                                        // height: 40,
                                      ),
                                      Text(
                                        '  432 Recipes',
                                        style: const TextStyle().w(4).s(12),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: PrimaryColor,
                                        prefixIcon: const Icon(Icons.search),
                                        hintText: 'Search Captain Cooks',
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TabBar(
                                    controller: _tabController,
                                    labelColor: PrimaryColor,
                                    indicatorColor: Colors.yellow.shade700,
                                    tabs: const [
                                      Tab(text: 'Recipes'),
                                      Tab(text: 'Conversations'),
                                    ],
                                  ),
                                  Container(
                                    height: size.height / 1.33 / 1.8,
                                    child: TabBarView(
                                      controller: _tabController,
                                      children: [
                                        /// Tab 1 .>>>
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 15),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      Images.clara,
                                                      // height: 40,
                                                    ),
                                                    Text(
                                                      '  Clara',
                                                      style: const TextStyle()
                                                          .w(6)
                                                          .s(14),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      '.  32m ago',
                                                      style: const TextStyle()
                                                          .w(5)
                                                          .s(14),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            right: 2),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: PrimaryColor,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                          ),
                                                        ),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10,
                                                                vertical: 6),
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 17,
                                                          color: Colors.white,
                                                        )),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: PrimaryColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  8),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  8),
                                                        ),
                                                      ),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 6),
                                                      child: Text(
                                                        "Add Recipes",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 12),
                                            Image.asset(
                                              Images.beefBroccoli,
                                              // height: 40,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '   Beef with Broccoli',
                                              style:
                                                  const TextStyle().w(4).s(14),
                                            ),
                                          ],
                                        ),

                                        /// Tab 2 .>>>
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 15),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  Images.clara,
                                                  // height: 40,
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Clara',
                                                          style:
                                                              const TextStyle()
                                                                  .w(6)
                                                                  .s(10),
                                                        ),
                                                        SizedBox(width: 8),
                                                        Text(
                                                          '.  1h ago',
                                                          style:
                                                              const TextStyle()
                                                                  .w(5)
                                                                  .s(10),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 8),
                                                    Text(
                                                      'Does anyone have a Beef with Broccoli recipe\nor know where to get one?  ',
                                                      style: const TextStyle()
                                                          .w(5)
                                                          .s(10),
                                                    ),
                                                    SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          size: 20,
                                                        ),
                                                        SizedBox(width: 20),
                                                        Icon(
                                                          Icons.comment,
                                                          size: 20,
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 12),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
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
}
