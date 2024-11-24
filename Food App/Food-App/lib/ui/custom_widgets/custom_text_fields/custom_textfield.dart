import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_gdpr/core/constant/color.dart';

class CustomTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? labelText;
  final TextEditingController? controller;
  final Widget? preFixIcon;
  final int maxLine;
  final Iterable<String>? autofillHints;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? keyBoardType;
  final IconButton? suffixIcon;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final bool isMultiline;
  final TextAlign textAlign;
  final Color? fillColor;

  CustomTextField({
    this.fillColor,
    this.isMultiline = false,
    this.preFixIcon,
    this.maxLine = 1,
    this.autofillHints,
    this.onChanged,
    this.controller,
    this.labelText,
    this.validator,
    this.obscureText = false,
    this.textInputAction,
    this.keyBoardType,
    this.suffixIcon,
    this.focusNode,
    this.onFieldSubmitted,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyBoardType,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      maxLines: maxLine,
      obscureText: obscureText,
      autofillHints: autofillHints,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: GoogleFonts.dmSans(fontSize: 14, fontWeight: FontWeight.w600),
      onFieldSubmitted: onFieldSubmitted,
      textAlign: textAlign,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        hintText: labelText,
        border: InputBorder.none,
        labelStyle:
            GoogleFonts.dmSans(fontSize: 14, fontWeight: FontWeight.w400),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        enabledBorder: InputBorder.none,
        hintStyle: GoogleFonts.dmSans(fontSize: 14, color: Colors.white),
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        errorStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xffF7658B),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: preFixIcon,
      ),
    );
  }
}

class AuthCustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? myController;
  final TextInputType keyBoardType;
  final bool obscureText;
  final VoidCallback? onChangeIcon;
  final FormFieldValidator validator;
  final String? iconData;
  final textInputAction;

  AuthCustomTextField({
    required this.hintText,
    this.myController,
    required this.keyBoardType,
    required this.obscureText,
    this.onChangeIcon,
    this.iconData,
    this.textInputAction,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        filled: true,
        fillColor: PrimaryColor,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black26,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: iconData != null
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: onChangeIcon,
                  child: Image.asset(
                    iconData!,
                  ),
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(14),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD1D1D6), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: PrimaryColor, width: 2)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
