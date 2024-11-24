import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/screens/substitute_option/substitute_details.dart';

class SubstituteOption extends StatelessWidget {
  SubstituteOption({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Images.homeIcon,
                    height: 40,
                  ),
                  Text(
                    "    Substitute Ingredients",
                    style: TextStyle().s(14).w(6),
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
              SizedBox(height: 20),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: PrimaryColor,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                child: AnimationLimiter(
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SubstituteDetails()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    top: 5, bottom: 10, right: 5, left: 5),
                                decoration: BoxDecoration(
                                  color: PrimaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 10,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      item['image']!,
                                      height: 90,
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              item['name']!,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            "${item['substitutes']!} Substitutes found",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0XFF777777)),
                                          ),
                                          const SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                    Text('Show\nSubstitutes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: PrimaryColor)),
                                    SizedBox(width: 6),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, String>> items = [
    {'name': 'onion', 'image': Images.onion, 'substitutes': '14'},
    {'name': 'Meat', 'image': Images.meat, 'substitutes': '17'},
    {'name': 'Bell Pepper', 'image': Images.bellPeper, 'substitutes': '9'},
    {'name': 'Potato', 'image': Images.potato, 'substitutes': '5'},
    {'name': 'Tomato', 'image': Images.tomato, 'substitutes': '3'},
  ];
}
