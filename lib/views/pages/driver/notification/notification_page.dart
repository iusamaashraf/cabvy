import 'package:cabvy/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/gif/bg_gif.gif',
            fit: BoxFit.cover,
            height: Get.height,
          ),
          Positioned(
            top: Get.height * 0.07,
            left: Get.width * 0.04,
            child: SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () => Get.back(),
                      child: Image.asset(
                        IconClass.arrowBack,
                        height: Get.height * 0.05,
                      )),
                  const Spacer(),
                  Text(
                    'Notifications',
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.13,
            child: SizedBox(
              height: Get.height * 0.9,
              width: Get.width * 0.95,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: Get.height * 0.2,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: Get.height * 0.15,
                            width: Get.width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffD08EFF),
                                    blurRadius: 24,
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aluip ex ea com modo consequat.',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -0,
                          left: 5,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/icons/notificationicon.png',
                              height: Get.height * 0.04,
                              width: Get.width * 0.05,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -1,
                          right: Get.width * 0.1,
                          child: ShaderMask(
                            shaderCallback: (bounds) => const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff6500FD),
                                Color(0xffffffff),
                              ],
                            ).createShader(bounds),
                            child: Text(
                              '5:30',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
