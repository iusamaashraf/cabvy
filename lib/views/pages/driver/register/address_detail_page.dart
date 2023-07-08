import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/constants/images.dart';
import 'package:cabvy/views/pages/driver/register/vehile_detail_page.dart';
import 'package:cabvy/views/widgets/bottom_animation.dart';
import 'package:cabvy/views/widgets/common_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressDetailPage extends StatelessWidget {
  AddressDetailPage({super.key});

  final TextEditingController payControllerController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
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
          "Détails de l'adresse",
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
                          Container(
                            width: Get.width,
                            height: Get.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: const Color(0xffD08EFF),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Color(0xff6F2773),
                                  ),
                                  const SizedBox(width: 10),
                                  const Spacer(),
                                  Image.asset('assets/icons/location.png'),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: payControllerController,
                            onChanged: (value) {},
                            hintText: 'Pays',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: departmentController,
                            onChanged: (value) {},
                            hintText: 'Département',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: cityController,
                            onChanged: (value) {},
                            hintText: 'Ville',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: postalCodeController,
                            onChanged: (value) {},
                            hintText: 'Code postal',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.number,
                            controller: addressController,
                            onChanged: (value) {},
                            hintText: 'Adresse ',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.05),
                          GestureDetector(
                            onTap: () =>
                                Get.to(() => const VehicleDetailPage()),
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
