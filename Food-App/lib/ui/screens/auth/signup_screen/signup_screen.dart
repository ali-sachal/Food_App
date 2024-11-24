import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/screens/auth/signin_screen/signin_screen.dart';
import 'package:security_gdpr/ui/screens/auth/signup_screen/signup_provider.dart';
import 'package:security_gdpr/ui/screens/auth/welcome_screen.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: ChangeNotifierProvider<SignUpProvider>(
        create: (BuildContext context) {
          return SignUpProvider();
        },
        child: Consumer<SignUpProvider>(builder:
            (BuildContext context, SignUpProvider signupValue, Widget? child) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              height: size.height,
              width: size.width,
              margin: const EdgeInsets.only(left: 18),
              padding: const EdgeInsets.only(left: 20, right: 53),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/auth_bg.png"), // Replace with your image path
                  fit: BoxFit.cover, // Adjust the image fit
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    children: [
                      Text(
                        "Welcome! Sign up now\nfor a delicious journey.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        "Create an account to get started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 0.0, bottom: 20, top: 5),
                        child: AuthCustomTextField(
                          hintText: 'Enter your name',
                          keyBoardType: TextInputType.name,
                          obscureText: false,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your name";
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 0.0, bottom: 20, top: 5),
                        child: AuthCustomTextField(
                          hintText: 'Enter your Email',
                          keyBoardType: TextInputType.emailAddress,
                          obscureText: false,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your email";
                            }
                            if (!value.contains("@")) {
                              return "Enter valid email";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 0.0, bottom: 20, top: 10),
                        child: AuthCustomTextField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your password";
                            }
                            return null;
                          },
                          hintText: 'Enter your password',
                          myController: signupValue.passwordController,
                          keyBoardType: TextInputType.visiblePassword,
                          obscureText: signupValue.showPass,
                          onChangeIcon: () {
                            signupValue.setShowPass();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 0.0, bottom: 20, top: 10),
                        child: AuthCustomTextField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please confirm your password";
                            }
                            return null;
                          },
                          hintText: 'Confirm password',
                          keyBoardType: TextInputType.visiblePassword,
                          obscureText: signupValue.showPass,
                          onChangeIcon: () {
                            signupValue.setShowPass();
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Welcome2Screen()));
                            },
                            child: Image.asset(
                              "assets/icons/_signup.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account? ",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: "Sign in",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInScreen()));
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: PrimaryColor,
//       body: ChangeNotifierProvider<SignUpProvider>(
//         create: (BuildContext context) {
//           return SignUpProvider();
//         },
//         child: Consumer<SignUpProvider>(
//             builder:
//                 (BuildContext context, SignUpProvider signupValue, Widget? child) {
//               return GestureDetector(
//                 onTap: (){
//                   FocusScope.of(context).unfocus();
//                 },
//                 child: SizedBox(
//                   height: size.height,
//                   width: size.width,
//                   child: Stack(
//                     children: [
//                       Image.asset(Images.signInBG),
//                       Positioned(
//                         bottom: 0,
//                         child: Container(
//                           height: size.height / 1.37,
//                           width: size.width,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(35.0),
//                               topRight: Radius.circular(35.0),
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black26,
//                                 spreadRadius: 2,
//                                 blurRadius: 10,
//                                 offset: Offset(4, 0),
//                               ),
//                             ],
//                           ),
//                           child: Form(
//                             key: signupValue.formKey,
//                             child: SingleChildScrollView(
//                               child: AnimationLimiter(
//                                 child: AnimationConfiguration.synchronized(
//                                   duration: const Duration(milliseconds: 500),
//                                   child: SlideAnimation(
//                                     verticalOffset: -50.0,
//                                     child: FadeInAnimation(
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           const SizedBox(
//                                             height: 20,
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(left: 20.0),
//                                             child: Text(
//                                               "Sign Up",
//                                               style: TextStyle(
//                                                 fontSize: 22,
//                                                 fontWeight: FontWeight.w700,
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(left: 20.0,top: 20),
//
//                                             child: Text(
//                                               "Full Name",
//                                               style: TextStyle(
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ),
//                                       Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 20.0, right: 20.0, bottom: 8, top: 5),
//                                             child: AuthCustomTextField(
//                                               hintText: 'Enter your full name',
//                                               myController: signupValue.fullNameController,
//                                               keyBoardType: TextInputType.name,
//                                               textInputAction: TextInputAction.next,
//                                               obscureText: false,
//                                               validator: (value) {
//                                                 if (value.isEmpty) {
//                                                   return "Please enter your full name";
//                                                 }
//                                                 return null;
//                                               },
//                                             ),
//                                           ),
//
//                                           Padding(
//                                             padding: const EdgeInsets.only(left: 20.0,top: 8),
//
//                                             child: Text(
//                                               "Email",
//                                               style: TextStyle(
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 20.0, right: 20.0, bottom: 8, top: 5),
//                                             child: AuthCustomTextField(
//                                               hintText: 'Enter your Email',
//                                               myController: signupValue.emailController,
//                                               keyBoardType: TextInputType.emailAddress,
//                                               obscureText: false,
//                                               validator: (value) {
//                                                 if (value.isEmpty) {
//                                                   return "Please enter your email";
//                                                 }
//                                                 if (!value.contains("@")) {
//                                                   return "Enter valid email";
//                                                 }
//                                                 return null;
//                                               },
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(left: 20.0,top: 8),
//
//                                             child: Text(
//                                               "Password",
//                                               style: TextStyle(
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 20.0, right: 20.0, bottom: 20, top: 5),
//                                             child: AuthCustomTextField(
//                                               validator: (value) {
//                                                 if (value.isEmpty) {
//                                                   return "Please enter your password";
//                                                 }
//                                                 return null;
//                                               },
//                                               hintText: 'Enter your password',
//                                               myController: signupValue.passwordController,
//                                               keyBoardType: TextInputType.visiblePassword,
//                                               obscureText: false,
//                                               onChangeIcon: () {
//                                               },
//                                             ),
//                                           ),
//                                           SizedBox(height: 15),
//
//                                           Center(
//                                             child: GestureDetector(
//                                               onTap: (){
//                                                 Navigator.push(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                         builder: (context) =>
//                                                         const HomeScreen()));
//                                               },
//                                               child: Container(
//                                                 width: 170,
//                                                 height: 50,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius: BorderRadius.circular(40),
//                                                   gradient: const LinearGradient(
//                                                     colors: [
//                                                       Color(0xFF997613),
//                                                       Color(0xFFFFC520),
//                                                     ],
//                                                     begin: Alignment.bottomCenter,
//                                                     end: Alignment.topCenter,
//                                                   ),
//                                                 ),
//                                                 child: const Center(
//                                                   child: Text(
//                                                     'Sign up',
//                                                     style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontWeight: FontWeight.bold,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           const SizedBox(height: 30),
//
//                                           const Center(
//                                             child: Text(
//                                               "Or Sign In With  ",
//                                               textAlign: TextAlign.center,
//                                               style: TextStyle(
//                                                   fontSize: 14, fontWeight: FontWeight.w400),
//                                             ),
//                                           ),
//                                           const SizedBox(height: 30),
//                                           Row(
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             children: [
//                                               Container(
//                                                 padding: EdgeInsets.only(right: 15,top: 4,bottom: 4),
//                                                 decoration: BoxDecoration(
//                                                   color: Colors.white,
//                                                   borderRadius: BorderRadius.circular(50),
//
//                                                   boxShadow: const [
//                                                     BoxShadow(
//                                                       color: Colors.black12,
//                                                       spreadRadius: 0,
//                                                       blurRadius: 5,
//                                                       offset: Offset(0, 4),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 child: Row(
//                                                   children: [
//                                                     Image.asset(
//                                                       Images.facebookIcon,
//                                                       height: 25,
//                                                     ),
//                                                     SizedBox(width: 6),
//                                                     Text("Facebook")
//                                                   ],
//                                                 ),
//                                               ),
//                                               SizedBox(width: 18),
//                                               Container(
//                                                 padding: EdgeInsets.only(right: 15,top: 4,bottom: 4),
//                                                 decoration: BoxDecoration(
//                                                   color: Colors.white,
//                                                   borderRadius: BorderRadius.circular(50),
//
//                                                   boxShadow: const [
//                                                     BoxShadow(
//                                                       color: Colors.black12,
//                                                       spreadRadius: 0,
//                                                       blurRadius: 5,
//                                                       offset: Offset(0, 4),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 child: Row(
//                                                   children: [
//                                                     Image.asset(
//                                                       Images.googleIcon,
//                                                       height: 25,
//                                                     ),
//                                                     SizedBox(width: 6),
//                                                     Text(" Google  ")
//                                                   ],
//                                                 ),
//                                               ),
//
//                                             ],
//                                           ),
//                                           const SizedBox(
//                                             height: 50,
//                                           ),
//                                           Center(
//                                             child: RichText(
//                                               textAlign: TextAlign.center,
//                                               text: TextSpan(
//                                                 children: [
//                                                   TextSpan(
//                                                     text: "Already have an account? ",
//                                                     style: GoogleFonts.roboto(
//                                                         fontSize: 14,
//                                                         color: Colors.black,
//                                                         fontWeight: FontWeight.w700
//                                                     ),
//                                                   ),
//                                                   TextSpan(
//                                                     text: "Login",
//                                                     style: GoogleFonts.roboto(
//                                                       fontSize: 14,
//                                                       fontWeight: FontWeight.w700,
//                                                       color: const Color(0xffBF352C),
//                                                     ),
//                                                     recognizer: TapGestureRecognizer()
//                                                       ..onTap = () {
//                                                         Navigator.pushReplacement(
//                                                             context,
//                                                             MaterialPageRoute(
//                                                                 builder: (context) =>
//                                                                 const SignInScreen()));
//                                                       },
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           const SizedBox(
//                                             height: 20,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             }
//         ),
//       ),
//     );
//   }
// }

