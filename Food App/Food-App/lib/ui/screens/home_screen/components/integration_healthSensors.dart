// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:security_gdpr/core/constant/color.dart';
import 'package:security_gdpr/ui/custom_widgets/buttons/custom_buttons.dart';

integration_healthSensors(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Integration with Health Sensors",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(

        //width: MediaQuery.of(context).size.width,
        decoration: boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(
              child: CircularPercentIndicator(
                radius: 120.0, // Adjust the radius as per your design
                lineWidth: 15.0, // Width of the progress arc
                percent: 0.7, // Set percent (70% in this example)
                animation: true,
                animationDuration: 1200,
                backgroundColor:
                    Colors.grey.shade200, // Background color of the arc

                circularStrokeCap:
                    CircularStrokeCap.round, // Rounded ends of the progress bar
                center: Container(
                  width: 210,
                  height: 210,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1468",
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFA722), // Color matching the arc
                        ),
                      ),
                      Text(
                        "kcal Left",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(

            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: PrimaryColor)),
              child: Text(
                "Set new Goals through Health Sensors via Bluetooth",
                style: TextStyle(color: PrimaryColor),
              ),

            )
          ],
        ),
      )
    ],
  );
}
