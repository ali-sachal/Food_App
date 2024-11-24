import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/screens/auth/signin_screen/signin_screen.dart';
import 'package:security_gdpr/ui/screens/auth/signup_screen/signup_screen.dart';

class AuthSelectionScreen extends StatefulWidget {
  const AuthSelectionScreen({Key? key}) : super(key: key);

  @override
  State<AuthSelectionScreen> createState() => _AuthSelectionScreenState();
}

class _AuthSelectionScreenState extends State<AuthSelectionScreen> {
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
                    SizedBox(),
                    SizedBox(),
                    SizedBox(),
                    SizedBox(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome to Master Chef",
                          style:
                              GoogleFonts.inter().s(18).w(7).cl(PrimaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "We've got the best meals for you",
                          style: GoogleFonts.inter().s(18).w(7),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sign up or Login to continue",
                          style: GoogleFonts.inter().s(15).w(5),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
                            },
                            child: Image.asset(
                              "assets/icons/login_.png",
                              height: 45,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: Image.asset(
                              "assets/icons/_signup.png",
                              height: 45,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "or continue with",
                          style: GoogleFonts.inter().s(16).w(6),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/g.png",
                              height: 33,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              "assets/icons/f.png",
                              height: 33,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              "assets/icons/a.png",
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(),
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

//
// class AuthSelectionScreen extends StatefulWidget {
//   const AuthSelectionScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AuthSelectionScreen> createState() => _AuthSelectionScreenState();
// }
//
// class _AuthSelectionScreenState extends State<AuthSelectionScreen> {
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
//                       alignment: Alignment.topLeft,
//                       child: Image.asset(
//                         Images.aAsset1,
//                         height: 150,
//                       ),
//                     ),
//                     Text(
//                       "Let's Get Started",
//                       style: GoogleFonts.inter().s(25).w(7).cl(PrimaryColor),
//                     ),
//                     Column(
//                       children: [
//                         _authSelectionButton(
//                             icon: Images.googleIcon,
//                             title: "Continue with Google"),
//                         SizedBox(height: 40),
//                         _authSelectionButton(
//                             icon: Images.appleIcon,
//                             title: "Continue with Apple "),
//                         SizedBox(height: 30),
//                         Text(
//                           "or",
//                           style: GoogleFonts.inter().s(18).w(7),
//                         ),
//                         SizedBox(height: 30),
//                         InkWell(
//                           onTap: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
//                           },
//                           child: Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 15, vertical: 12),
//                             margin: const EdgeInsets.symmetric(horizontal: 20),
//                             decoration: BoxDecoration(
//                               color: Color(0xff1BA1F3),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Create account",
//                                 style: GoogleFonts.inter(
//                                     fontWeight: FontWeight.w700,
//                                     fontSize: 15,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(),
//                     SizedBox(),
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: Image.asset(
//                         Images.aAsset2,
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
//
//   Widget _authSelectionButton({required String icon, required String title}) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//         color: Color(0xffE9E9E9),
//         borderRadius: BorderRadius.circular(50),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black54,
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             icon,
//             height: 20,
//           ),
//           const SizedBox(width: 10),
//           Text(
//             title,
//             style: GoogleFonts.inter(
//               fontWeight: FontWeight.w700,
//               fontSize: 15,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
