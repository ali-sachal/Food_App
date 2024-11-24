import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:security_gdpr/ui/screens/auth/signin_screen/sign_in_provider.dart';
import 'package:security_gdpr/ui/screens/auth/signup_screen/signup_screen.dart';
import 'package:security_gdpr/ui/screens/auth/welcome_screen.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/custom_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ChangeNotifierProvider<SignInProvider>(
        create: (BuildContext context) {
          return SignInProvider();
        },
        child: Consumer<SignInProvider>(builder:
            (BuildContext context, SignInProvider signinValue, Widget? child) {
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
              child: Form(
                key: signinValue.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          "Login to continue",
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
                            hintText: 'Enter your Email',
                            myController: signinValue.emailController,
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
                            myController: signinValue.passwordController,
                            keyBoardType: TextInputType.visiblePassword,
                            obscureText: signinValue.showPass,
                            onChangeIcon: () {
                              signinValue.setShowPass();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  "Forgot Password?  ",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  "Remember me  ",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
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
                                        builder: (context) =>
                                            Welcome2Screen()));
                              },
                              child: Image.asset(
                                "assets/icons/login_.png",
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
                                  text: "Don’t have an account? ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: "Sign Up",
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
                                                  const SignUpScreen()));
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
            ),
          );
        }),
      ),
    );
  }
}


// class SignInScreen extends StatelessWidget {
//   const SignInScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: PrimaryColor,
//       body: ChangeNotifierProvider<SignInProvider>(
//       create: (BuildContext context) {
//         return SignInProvider();
//       },
//       child: Consumer<SignInProvider>(
//         builder:
//             (BuildContext context, SignInProvider signinValue, Widget? child) {
//           return GestureDetector(
//             onTap: (){
//               FocusScope.of(context).unfocus();
//             },
//             child: SizedBox(
//                 height: size.height,
//                 width: size.width,
//                 child: Stack(
//                   children: [
//                     Image.asset(Images.signUpBG),
//                     Positioned(
//                       bottom: 0,
//                       child: Container(
//                         height: size.height / 1.37,
//                         width: size.width,
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(35.0),
//                             topRight: Radius.circular(35.0),
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black26,
//                               spreadRadius: 2,
//                               blurRadius: 10,
//                               offset: Offset(4, 0),
//                             ),
//                           ],
//                         ),
//                         child: Form(
//                           key: signinValue.formKey,
//                           child: SingleChildScrollView(
//                             child: AnimationLimiter(
//                               child: AnimationConfiguration.synchronized(
//                                 duration: const Duration(milliseconds: 500),
//                                 child: SlideAnimation(
//                                   verticalOffset: -50.0,
//                                   child: FadeInAnimation(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         const SizedBox(
//                                           height: 20,
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 20.0),
//                                           child: Text(
//                                             "Log In",
//                                             style: TextStyle(
//                                               fontSize: 22,
//                                               fontWeight: FontWeight.w700,
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 20.0,top: 20),
//
//                                           child: Text(
//                                             "Email",
//                                             style: TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               left: 20.0, right: 20.0, bottom: 15, top: 5),
//                                           child: AuthCustomTextField(
//                                             hintText: 'Enter your Email',
//                                             myController: signinValue.emailController,
//                                             keyBoardType: TextInputType.emailAddress,
//                                             obscureText: false,
//                                             validator: (value) {
//                                               if (value.isEmpty) {
//                                                 return "Please enter your email";
//                                               }
//                                               if (!value.contains("@")) {
//                                                 return "Enter valid email";
//                                               }
//                                               return null;
//                                             },
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(left: 20.0,top: 10),
//
//                                           child: Text(
//                                             "Password",
//                                             style: TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               left: 20.0, right: 20.0, bottom: 20, top: 5),
//                                           child: AuthCustomTextField(
//                                             validator: (value) {
//                                               if (value.isEmpty) {
//                                                 return "Please enter your password";
//                                               }
//                                               return null;
//                                             },
//                                             hintText: 'Enter your password',
//                                             myController: signinValue.passwordController,
//                                             keyBoardType: TextInputType.visiblePassword,
//                                             obscureText: signinValue.showPass,
//                                             onChangeIcon: () {
//                                               signinValue.setShowPass();
//                                             },
//                                           ),
//                                         ),
//                                         Center(
//                                           child: InkWell(
//                                             onTap: () {},
//                                             child: Text(
//                                               "Forgot Password?  ",
//                                               style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.w600,
//                                                 color: PrimaryColor,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       SizedBox(height: 25),
//
//                                       Center(
//                                         child: GestureDetector(
//                                           onTap: (){
//                                             Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) =>
//                                                     const HomeScreen()));
//                                           },
//                                           child: Container(
//                                             width: 170,
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                               borderRadius: BorderRadius.circular(40),
//                                               gradient: const LinearGradient(
//                                                 colors: [
//                                                   Color(0xFF997613),
//                                                   Color(0xFFFFC520),
//                                                 ],
//                                                 begin: Alignment.bottomCenter,
//                                                 end: Alignment.topCenter,
//                                               ),
//                                             ),
//                                             child: const Center(
//                                               child: Text(
//                                                 'Login',
//                                                 style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontWeight: FontWeight.bold,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                         const SizedBox(height: 30),
//
//                                         const Center(
//                                           child: Text(
//                                             "Or Sign In With  ",
//                                             textAlign: TextAlign.center,
//                                             style: TextStyle(
//                                                 fontSize: 14, fontWeight: FontWeight.w400),
//                                           ),
//                                         ),
//                                         const SizedBox(height: 30),
//                                         Row(
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               padding: EdgeInsets.only(right: 15,top: 4,bottom: 4),
//                                               decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius: BorderRadius.circular(50),
//
//                                                 boxShadow: const [
//                                                   BoxShadow(
//                                                     color: Colors.black12,
//                                                     spreadRadius: 0,
//                                                     blurRadius: 5,
//                                                     offset: Offset(0, 4),
//                                                   ),
//                                                 ],
//                                               ),
//                                               child: Row(
//                                                 children: [
//                                                   Image.asset(
//                                                     Images.facebookIcon,
//                                                     height: 25,
//                                                   ),
//                                                   SizedBox(width: 6),
//                                                   Text("Facebook")
//                                                 ],
//                                               ),
//                                             ),
//                                             SizedBox(width: 18),
//                                             Container(
//                                               padding: EdgeInsets.only(right: 15,top: 4,bottom: 4),
//                                               decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius: BorderRadius.circular(50),
//
//                                                 boxShadow: const [
//                                                   BoxShadow(
//                                                     color: Colors.black12,
//                                                     spreadRadius: 0,
//                                                     blurRadius: 5,
//                                                     offset: Offset(0, 4),
//                                                   ),
//                                                 ],
//                                               ),
//                                               child: Row(
//                                                 children: [
//                                                   Image.asset(
//                                                     Images.googleIcon,
//                                                     height: 25,
//                                                   ),
//                                                   SizedBox(width: 6),
//                                                   Text(" Google  ")
//                                                 ],
//                                               ),
//                                             ),
//
//                                           ],
//                                         ),
//                                         const SizedBox(
//                                           height: 50,
//                                         ),
//                                         Center(
//                                           child: RichText(
//                                             textAlign: TextAlign.center,
//                                             text: TextSpan(
//                                               children: [
//                                                 TextSpan(
//                                                   text: "Don’t have an account? ",
//                                                   style: GoogleFonts.roboto(
//                                                       fontSize: 14,
//                                                       color: Colors.black,
//                                                       fontWeight: FontWeight.w700
//                                                   ),
//                                                 ),
//                                                 TextSpan(
//                                                   text: "Sign Up",
//                                                   style: GoogleFonts.roboto(
//                                                     fontSize: 14,
//                                                     fontWeight: FontWeight.w700,
//                                                     color: const Color(0xffBF352C),
//                                                   ),
//                                                   recognizer: TapGestureRecognizer()
//                                                     ..onTap = () {
//                                                       Navigator.pushReplacement(
//                                                           context,
//                                                           MaterialPageRoute(
//                                                               builder: (context) =>
//                                                               const SignUpScreen()));
//                                                     },
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         const SizedBox(
//                                           height: 20,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }
//         ),
//       ),
//     );
//   }
// }

