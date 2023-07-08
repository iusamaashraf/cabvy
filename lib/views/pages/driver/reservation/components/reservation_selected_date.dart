import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReservationSelectedDate extends StatelessWidget {
  const ReservationSelectedDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: '26 Nov. 2022, ',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
            children: <InlineSpan>[
              WidgetSpan(
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        const Color(0xffF26DFF).withOpacity(1),
                        const Color(0xffF26DFF).withOpacity(.15),
                      ],
                      stops: const [0, 1.0],
                    ).createShader(bounds);
                  },
                  child: Text(
                    '08:00 ',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        GradientText(
            isTopToBottom: true,
            colors: const [Colors.black, Colors.white],
            text: '25 € ',
            fontSize: 16),
      ],
    );
  }
}
