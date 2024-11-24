import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:security_gdpr/configs/app_typography_ext.dart';
import 'package:security_gdpr/core/constant/images.dart';
import 'package:security_gdpr/ui/screens/global_food/global_food_detail.dart';
import 'package:security_gdpr/ui/screens/global_food/uplaod_recip_screen.dart';

class GlobalFood extends StatefulWidget {
  const GlobalFood({Key? key}) : super(key: key);

  @override
  State<GlobalFood> createState() => _GlobalFoodState();
}

class _GlobalFoodState extends State<GlobalFood> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            "Global Food",
            style: TextStyle().s(15).w(6),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
            "Explore Different Food Cultures",
            style: TextStyle().s(13).w(6),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GlobalFoodDetail()));
          },
          child: Image.asset(
            Images.globalMap,
          ),
        ),
        SizedBox(height: 30),
        Center(
          child: Text(
            "Share from Various Food Cultures",
            style: TextStyle().s(15).w(6),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UplaodRecipScreen(),
                  ));
            },
            child: _selectedImage == null
                ? Image.asset(
                    Images.uploadCover,
                  )
                : Container(
                    height: 200,
                    child: Center(
                      child: Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
