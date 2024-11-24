import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/ui/screens/auth/auth_selection/auth_selection.dart';
import 'package:security_gdpr/ui/screens/home_screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: AnimationLimiter(
          child: AnimationConfiguration.synchronized(
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              verticalOffset: -50.0,
              child: FadeInAnimation(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/icons/splash_bg.png",
                        height: 300,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AuthSelectionScreen()));
                          },
                          child: Image.asset(
                            "assets/icons/get_started.png",
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(height: 40)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Welcome2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(left: 5, top: 80),
        padding: EdgeInsets.only(left: 20, right: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/_welcomebg.png"), // Replace with your image path
            fit: BoxFit.cover, // Adjust the image fit
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Welcome Username",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Your food journey with [App Name]\nstarts now.\nYour favorite meals are just a tap\naway.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Image.asset(
                          "assets/images/_letsgo.png",
                          height: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

