import 'package:cabvy/views/pages/driver/otp/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Get.height * 0.05, horizontal: Get.width * 0.03),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset('assets/icons/Vector.svg')),
                    Align(
                      child: Column(
                        children: [
                          SizedBox(height: Get.height * 0.1),
                          Image.asset(
                              'assets/images/Wavy_Gen-02_Single-01_1-removebg-preview 1.png'),
                          Text(
                            'Entrez vos coordonnées',
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Image.asset('assets/images/image.png'),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '+380639533980',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                  color: Color(0xffD08EFF),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.12,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => const OtpPage());
                                },
                                child: SvgPicture.asset(
                                    'assets/icons/forward_arrow.svg'),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
