import 'package:flutter/material.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';

import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:security_gdpr/ui/screens/home_screen/components/master_chef.dart';

class CreateAccountChef extends StatelessWidget {
  const CreateAccountChef({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Image.asset("assets/images/create_chef.png"),
            Positioned(
              top: 60,
              left: 20,
              right: 20,
              child: Image.asset("assets/images/upload_cover.png"),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height / 1.6,
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
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create Chef Account",
                          style: TextStyle().w(7).cl(progressColor).s(30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Create account as a Master Chef and cook delicious details.",
                          style: TextStyle().s(12).cl(Colors.black),
                        ),
                        custom_textfeild(context, "Name", "Chef Name"),
                        custom_textfeild(
                            context, "Email ID", "Enter Your Email ID"),
                        SizedBox(
                          height: 15,
                        ),
                        custom_container(context),
                        custom_textfeild(
                            context, "Create Password", "Password"),
                        custom_textfeild(
                            context, "Confirm Password", "Password"),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: CustomButton(
                                text: "Create Account",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MasterChef()));
                                })),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an Account?"),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle().cl(progressColor),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

custom_textfeild(BuildContext context, String name, String txtfeild_name) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 15,
      ),
      Text(
        name,
        style: TextStyle().s(16).cl(Colors.black).w(7),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Text(
          txtfeild_name,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xfff777777),
          ),
        ),
      )
    ],
  );
}

custom_container(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            " Select Country",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            // width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Country",
                  style: TextStyle(
                    color: Color(0xfff777777),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_drop_down_rounded)
              ],
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            " Select Nationality",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            // width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: PrimaryColor, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nationality"),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_drop_down_rounded)
              ],
            ),
          ),
        ],
      )
    ],
  );
}
