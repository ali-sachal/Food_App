import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

class CustomField extends StatelessWidget {
  final String title;
  final String fileName;

  const CustomField({
    Key? key,
    required this.title,
    required this.fileName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 5.0), // Padding for title
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black, // Title text color
              fontSize: 16.0, // Font size of the title
              fontWeight: FontWeight.bold, // Bold title
            ),
          ),
        ),
        // TextFormField
        Container(
          height: 57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), // Border radius
            color: gradient2, // Background color for the field
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: fileName, // Hint text
              hintStyle: TextStyle(
                color: Colors.white, // Hint text color
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Border radius
                borderSide: BorderSide.none, // No border line
              ),
              filled: true,
              fillColor: Colors.transparent, // Transparent background for the input field
            ),
            style: TextStyle(
              color: Colors.black, // Text color when typing
            ),
          ),
        ),
      ],
    );
  }
}

