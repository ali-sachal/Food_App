import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

class BarGraphWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 1816.0, // Positioning the entire widget
      left: 335.0,
      child: Container(
        decoration: BoxDecoration(
            color: gradient1, // Background color of the container
          borderRadius: BorderRadius.circular(10)
        ),

        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even spacing between bars
          children: [
            _buildBar(60, "Heart Risk"),
            _buildBar(78, "Blood Risk"),
            _buildBar(36, "Diabetes Risk"),
          ],
        ),
      ),
    );
  }

  // Method to create a bar with given height percentage and label
  Widget _buildBar(int percentage, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end, // Align bars to the bottom
      children: [
        Container(
          width: 28, // Bar width
          height: 139 * (percentage / 100), // Bar height based on percentage
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), // Rounded top corners
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.white, // Top color
                primaryColorWithOpacity, // Bottom color
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              '$percentage%',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Change to black for better visibility
              ),
            ),
          ),
        ),
        SizedBox(height: 4), // Space between bar and label
        Text(
          label, // Display label for the bar
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
