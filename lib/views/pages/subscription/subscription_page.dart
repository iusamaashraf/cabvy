import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'inviter_page.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Image.asset(
              'assets/gif/bg_gif.gif',
              fit: BoxFit.cover,
              height: Get.height,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: Get.height * 0.1),
                SizedBox(
                  height: Get.height * 0.3,
                  width: Get.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: Get.height * 0.25,
                        width: Get.width * 0.8,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffD08EFF),
                              Color(0xffD08EFF),
                              Colors.white,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GradientText(colors: const [
                                  Color(0xff000000),
                                  Color(0xffCA52C5),
                                  Color(0xffDB00FF),
                                ], text: 'RESPIRER', fontSize: 32),
                                Image.asset('assets/icons/logo.png'),
                                GradientText(colors: const [
                                  Color(0xff000000),
                                  Color(0xffCA52C5),
                                  Color(0xffDB00FF),
                                ], text: ' 1ère LIBERTE', fontSize: 28),
                                // Image.asset('assets/images/1 LIBERTE.png'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: Get.width * 0.03,
                        // child: Image.asset('assets/icons/circle.png'),
                        child: Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xffDB00FF),
                                Color(0xffD08EFF),
                                Colors.white,
                              ],
                            ),
                          ),
                          child: Image.asset('assets/icons/hand.png'),
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        left: Get.width * 0.02,
                        // child: Image.asset('assets/icons/circle.png'),
                        child: Container(
                          height: Get.height * 0.15,
                          width: Get.width * 0.15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xffDB00FF),
                                Color(0xffD08EFF),
                                Colors.white,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '-20 %',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: Get.height * 0.25,
                  width: Get.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: Get.height * 0.23,
                        width: Get.width * 0.8,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffD08EFF),
                              Color(0xffD08EFF),
                              Colors.white,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/30J.png'),
                                    Text(
                                      ',',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28, color: Colors.black),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.02),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: Get.width * 0.1),
                                      child:
                                          Image.asset('assets/images/€200.png'),
                                    )),
                                SizedBox(height: Get.height * 0.02),
                                Image.asset('assets/images/NOUVELLE VIE!.png'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -25,
                        left: Get.width * 0.01,
                        // child: Image.asset('assets/icons/circle.png'),
                        child: Container(
                          height: Get.height * 0.15,
                          width: Get.width * 0.15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xffDB00FF),
                                Color(0xffD08EFF),
                                Colors.white,
                              ],
                            ),
                          ),
                          child: Image.asset('assets/icons/lhand.png'),
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        right: Get.width * 0.03,
                        // child: Image.asset('assets/icons/circle.png'),
                        child: Container(
                          height: Get.height * 0.15,
                          width: Get.width * 0.15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xffDB00FF),
                                Color(0xffD08EFF),
                                Colors.white,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '0%',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const InviterPage(),
                    );
                  },
                  child: Image.asset('assets/images/button.png'),
                ),
                SizedBox(height: Get.height * 0.05),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
