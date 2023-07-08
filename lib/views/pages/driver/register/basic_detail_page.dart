import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/constants/images.dart';
import 'package:cabvy/views/pages/driver/register/address_detail_page.dart';
import 'package:cabvy/views/widgets/bottom_animation.dart';
import 'package:cabvy/views/widgets/common_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicDetailPage extends StatelessWidget {
  BasicDetailPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(IconClass.backArrow)),
        ),
        centerTitle: true,
        title: Text(
          "S'inscrire",
          style: GoogleFonts.montserrat(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    Text(
                      "Détails de base",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.6)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/gif/left_to_right.gif',
                          height: 30,
                        ),
                        Container(
                          height: 15,
                          width: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/gif/right_to_left.gif',
                          height: 30,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: nameController,
                            onChanged: (value) {},
                            hintText: 'Nom',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.emailAddress,
                            controller: emailController,
                            onChanged: (value) {},
                            hintText: 'Email',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.number,
                            controller: phoneController,
                            onChanged: (value) {},
                            hintText: '202-555-0148',
                            isPhoneVerifiedIcon: true,
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: genderController,
                            onChanged: (value) {},
                            hintText: 'Genre',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.number,
                            controller: dobController,
                            onChanged: (value) {},
                            hintText: 'Date de naissance',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.1),
                          GestureDetector(
                            onTap: () => Get.to(() => AddressDetailPage()),
                            child: Image.asset(ImageClass.buttonImage),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const BottomAnimation(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
