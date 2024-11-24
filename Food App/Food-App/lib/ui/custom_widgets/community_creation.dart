import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/custom_widgets/custom_text_fields/custom_textfield.dart';

class CommunityCreation extends StatelessWidget {
  const CommunityCreation({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: AnimationLimiter(
              child: AnimationConfiguration.synchronized(
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
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
                              "   Create Community",
                              style: TextStyle().s(15).w(6).cl(PrimaryColor),
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
                        Image.asset(
                          Images.createCommunity,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Create New Community",
                          style: TextStyle().s(25).w(6),
                        ),
                        SizedBox(height: 20),
                        const Text(
                          " Community Name",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          fillColor: PrimaryColor,
                          labelText: 'Enter Community Name',
                          textAlign: TextAlign.start,
                          keyBoardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          autofillHints: [AutofillHints.name],
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your community name";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          " Admin’s Email ID",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          fillColor: PrimaryColor,
                          labelText: 'Enter your Email  ID',
                          textAlign: TextAlign.start,
                          keyBoardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          autofillHints: [AutofillHints.email],
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your your Email  ID";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          " Create Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          fillColor: PrimaryColor,
                          labelText: 'Password',
                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.next,
                          autofillHints: [AutofillHints.password],
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          " Confirm Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          fillColor: PrimaryColor,
                          labelText: 'Password',
                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.next,
                          autofillHints: [AutofillHints.password],
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please confirm your password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              " Enter Members",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              " [Put comma ( , ) after each Email ID]",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          fillColor: PrimaryColor,
                          labelText: 'Enter Members Email ID ',
                          textAlign: TextAlign.start,
                          maxLine: 5,
                          keyBoardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          autofillHints: [AutofillHints.email],
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your Members Email ID ";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              " Upload Cover Photo ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              " (.JPG format only)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: PrimaryColor, // Text color
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Rounded corners
                                ),
                              ),
                              child: const Text(
                                'Browse Files',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: PrimaryColor, // Text color
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                            ),
                            child: const Text(
                              'Create Community',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
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
    );
  }
}
