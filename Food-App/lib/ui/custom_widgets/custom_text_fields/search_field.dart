import 'package:flutter/material.dart';
import 'package:security_gdpr/core/constant/color.dart';

customSearchField({required String hintText}) {
  return Container(
    height: 50,
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: PrimaryColor,
        prefixIcon: const Icon(Icons.search),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 12),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
