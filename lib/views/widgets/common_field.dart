import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CommonField extends StatelessWidget {
  CommonField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.hintText,
    required this.validator,
    this.isPhoneVerifiedIcon = false,
    required this.keyBoardType,
  });
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String hintText;
  final String? Function(String?)? validator;
  bool isPhoneVerifiedIcon;
  final TextInputType keyBoardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyBoardType,
      style: GoogleFonts.montserrat(
          fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: Color(0xffD08EFF),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: Color(0xffD08EFF),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: Color(0xffD08EFF),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: Color(0xffD08EFF),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: Color(0xffD08EFF),
            ),
          ),
          hintText: hintText,
          suffixIcon: isPhoneVerifiedIcon
              ? const Icon(
                  Icons.verified,
                  size: 18,
                )
              : Image.asset('assets/icons/star.png'),
          hintStyle: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(.6))),
    );
  }
}
