import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/ui/screens/auth/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    splashScreenDelay();
    super.initState();
  }

  splashScreenDelay() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

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
                    Center(
                        child: Text(
                      "Splash Logo",
                      style: TextStyle().cl(Colors.black).w(6).s(18),
                    )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        "assets/icons/s_auth_bg.png",
                        height: 300,
                      ),
                    ),
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



// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//
//   @override
//   void initState() {
//     splashScreenDelay();
//     super.initState();
//   }
//
//   splashScreenDelay() async {
//     await Future.delayed(const Duration(seconds: 3));
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.white,
//         child: AnimationLimiter(
//           child: AnimationConfiguration.synchronized(
//             duration: const Duration(milliseconds: 500),
//             child: SlideAnimation(
//               verticalOffset: -50.0,
//               child: FadeInAnimation(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: Image.asset(
//                         Images.sAsset1,
//                         height: 150,
//                       ),
//                     ),
//                     Center(child: Text("Splash Logo",style: TextStyle().cl(Colors.black).w(6).s(18),)),
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Image.asset(
//                         Images.sAsset2,
//                         height: 150,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
