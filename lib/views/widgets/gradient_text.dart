import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GradientText extends StatelessWidget {
  GradientText({
    super.key,
    required this.colors,
    required this.text,
    required this.fontSize,
    this.isTopToBottom = false,
  });
  final List<Color> colors;
  final String text;
  bool isTopToBottom;

  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
              begin: isTopToBottom ? Alignment.topCenter : Alignment.topLeft,
              end: isTopToBottom
                  ? Alignment.bottomCenter
                  : Alignment.bottomRight,
              colors: colors)
          .createShader(bounds),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            fontSize: fontSize,
            color: Colors.white,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
