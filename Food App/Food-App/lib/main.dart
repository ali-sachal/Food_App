import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_gdpr/ui/splash_screen.dart';
import 'core/constant/color.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Set a fixed design size
      builder: (context, child) => MaterialApp(
        title: 'Security & GDPR',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: PrimaryColor), // Ensure PrimaryColor is defined
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: const SplashScreen(), // Ensure SplashScreen is a valid widget
      ),
    );
  }
}
