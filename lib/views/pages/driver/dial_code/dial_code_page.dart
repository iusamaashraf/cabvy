import 'package:cabvy/views/pages/driver/map/map_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DialCodePage extends StatelessWidget {
  const DialCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/gif/bg_gif.gif',
              fit: BoxFit.cover,
              height: Get.height,
              width: Get.width,
            ),
            GestureDetector(
              onTap: () => Get.offAll(() => const MapPage()),
              child: Container(
                height: Get.height * 0.65,
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        'assets/gif/question_gif.gif',
                      ),
                    ),
                    Positioned(
                      top: Get.height * 0.247,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.black,
                        child: Center(
                          child: Image.asset(
                            'assets/icons/diamond1.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: Get.height * 0.06,
                        child: Text(
                          'COMPOSER\nVÔTRE CODE',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              color: const Color(0xffD08EFF),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        right: Get.width * 0.09,
                        bottom: Get.height * 0.02,
                        child: Text(
                          'X2',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
