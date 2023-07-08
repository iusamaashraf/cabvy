import 'package:cabvy/views/pages/choose_panel/choose_panel_page.dart';
import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InviterPage extends StatelessWidget {
  const InviterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/gif/bg_gif.gif',
            fit: BoxFit.cover,
            height: Get.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.05),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                        GradientText(
                                        colors: const[
                                          Color(0xffDB00FF),
                                          Color(0xff000000),
                                          Color(0xffDB00FF)
                                        ],
                                        text: 'INVITER,',
                                        fontSize: 32,
                                      ),
                                      GradientText(
                                        colors: [
                                          const Color(0xff5E4B64)
                                              .withOpacity(.29),
                                          const Color(0xff898989),
                                        ],
                                        text: '4',
                                        fontSize: 18,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: Get.width * 0.1),
                                  child:   GradientText(
                                    colors:const [Color(0xffDB00FF), Colors.black],
                                    text: '/ 60J  ',
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: Get.width * 0.01,
                      child: Image.asset('assets/images/logo partager 1.png'),
                    ),
                    Positioned(
                      bottom: -20,
                      left: Get.width * 0.08,
                      child: Container(
                        height: Get.height * 0.1,
                        width: Get.width * 0.1,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/Ellipse 520.png'),
                                fit: BoxFit.cover)),
                        child: Center(
                          child: Text(
                            '€100',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              Image.asset('assets/images/style.png'),
              SizedBox(height: Get.height * 0.03),
              SizedBox(
                width: Get.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
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
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Get.width * 0.08,
                                    right: Get.width * 0.08,
                                    top: Get.width * 0.08),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children:   [
                                    GradientText(
                                      text: '3',
                                      fontSize: 20,
                                      colors:const [
                                        Colors.white,
                                        Color(0xffAE74D8),
                                        Color(0xffD08EFF)
                                      ],
                                    ),
                                    GradientText(
                                      fontSize: 20,
                                      text: '+',
                                      colors:const [
                                        Colors.white,
                                        Color(0xffAE74D8),
                                        Color(0xffD08EFF)
                                      ],
                                    ),
                                    GradientText(
                                      fontSize: 20,
                                      text: '5',
                                      colors:const [
                                        Colors.white,
                                        Color(0xffAE74D8),
                                        Color(0xffD08EFF)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: Get.height * 0.1,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xffD08EFF),
                                        blurRadius: 4),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.black,
                                      const Color(0xff000000).withOpacity(.74),
                                      Colors.white,
                                      const Color(0xffB141A6).withOpacity(.16),
                                    ],
                                  ),
                                ),
                                child:   Center(
                                  child: GradientText(
                                    colors:const [
                                      Colors.white,
                                      Color(0xffF6DEFA),
                                      Color(0xffD08EFF)
                                    ],
                                    text: '-15%',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                                GradientText(
                                colors:const [Color(0xffDB00FF), Colors.black],
                                text: 'L’INFINI',
                                fontSize: 32,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: Get.width * 0.5),
                                child:   GradientText(
                                  colors:const [Color(0xffDB00FF), Colors.black],
                                  text: 'ACTIVER..',
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: Get.width * 0.01,
                      child:
                          Image.asset('assets/images/logo partager 1(1).png'),
                    ),
                    Positioned(
                      top: -20,
                      right: Get.width * 0.03,
                      child: Image.asset('assets/images/Group 630127.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => const ChoosePanelPage(),
                  );
                },
                child: Image.asset('assets/images/button.png'),
              ),
              SizedBox(height: Get.height * 0.05),
            ],
          ),
        ],
      ),
    );
  }
}
