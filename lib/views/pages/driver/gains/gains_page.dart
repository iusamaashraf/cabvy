import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GainsPage extends StatelessWidget {
  const GainsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: Get.width * 0.02,
            bottom: 20,
            child: Transform(
                transform: Matrix4.identity()..scale(1.0, -1.0, 1.0),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/gif/diamond.gif',
                  height: Get.height * 0.2,
                )),
          ),
          Positioned(
              bottom: Get.height * 0.18,
              left: 20,
              child: Image.asset(
                'assets/images/oiseaux_noir-removebg-preview 1.png',
                width: Get.width * 0.25,
              )),
          Positioned(
            top: Get.height * 0.07,
            right: Get.width * 0.1,
            child: Text(
              '€25',
              style: GoogleFonts.montserrat(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Opacity(
            opacity: .6,
            child: Image.asset(
              'assets/gif/bg_gif.gif',
              fit: BoxFit.cover,
              height: Get.height,
            ),
          ),
          Positioned(
              left: Get.width * 0.02,
              top: Get.height * 0.04,
              child: Image.asset('assets/icons/calendar.png')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Vérifier le rapport ',
                  style:
                      GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              const Color(0xffD08EFF).withOpacity(1),
                              Colors.black,
                            ],
                            stops: const [0.0, 1.0],
                          ).createShader(bounds);
                        },
                        child: Text(
                          'hebdomadaire',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: const Color(0xffD08EFF)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/icons/weeklyreportarrow.png')),
            ],
          ),
        ],
      ),
    );
  }
}
