import 'package:cabvy/views/pages/client/client_login/client_login_page.dart';
import 'package:cabvy/views/pages/driver/login_or_signup/login_or_signup_page.dart';
import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoosePanelPage extends StatefulWidget {
  const ChoosePanelPage({super.key});

  @override
  State<ChoosePanelPage> createState() => _ChoosePanelPageState();
}

class _ChoosePanelPageState extends State<ChoosePanelPage> {
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
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Get.to(() =>const ClientLoginPage()),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 12)
                        ],
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xff000000),
                            const Color(0xff000000).withOpacity(.5),
                            // const Color(0xff000000),
                            Colors.white54,
                            // Colors.white54,
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nôtre Force',
                          style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        GradientText(
                          colors: const [
                            Color(0xffDB00FF),
                            Color(0xffD08EFF),
                          ],
                          text: '(Client)',
                          fontSize: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.1),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const LoginOrSignUpPage());
                          // Get.to(() => const RegistrationPage());
                        },
                        child:
                            SvgPicture.asset('assets/images/Rectangle 28.svg')),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const LoginOrSignUpPage());
                        // Get.to(() => const RegistrationPage());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Vôtre Liberté',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          GradientText(
                            colors: const [
                              Color(0xffDB00FF),
                              Color(0xffD08EFF),
                            ],
                            text: '(Chauffeur)',
                            fontSize: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
