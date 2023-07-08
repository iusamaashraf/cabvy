import 'package:cabvy/views/pages/driver/register/basic_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

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
                          Image.asset('assets/images/otp.png'),
                          const SizedBox(height: 10),
                          Image.asset('assets/images/header.png'),
                          const SizedBox(height: 10),
                          Image.asset('assets/images/subtitle.png'),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: Get.height * 0.12,
                          ),
                          Pinput(
                            defaultPinTheme: PinTheme(
                              width: 56,
                              height: 56,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffD08EFF),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffD08EFF),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              width: 56,
                              height: 56,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffD08EFF),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffD08EFF),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            submittedPinTheme: PinTheme(
                              width: 56,
                              height: 56,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffD08EFF),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffD08EFF),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            validator: (s) {
                              return s == '2222' ? null : '';
                            },
                            pinputAutovalidateMode:
                                PinputAutovalidateMode.onSubmit,
                            showCursor: true,
                            onCompleted: (pin) {},
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: Image.asset('assets/images/resend.png')),
                          Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () => Get.to(() => BasicDetailPage()),
                              child: SvgPicture.asset(
                                  'assets/icons/forward_arrow.svg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
