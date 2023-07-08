import 'dart:io';

import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/constants/images.dart';
import 'package:cabvy/views/pages/driver/cab_subscription/cab_subscription_page.dart';
import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  File? image;
  Future pickImage(ImageSource sr) async {
    try {
      final image = await ImagePicker().pickImage(source: sr);
      if (image == null) {}
      final imageTemporary = File(image!.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('failed to pick image: $e');
    }
  }

  showOptionDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          //for picking video functionality
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              pickImage(ImageSource.gallery);
            },
            child: Row(
              children: [
                const Icon(Icons.image, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text('Gallery',
                      style: Theme.of(context).textTheme.titleMedium!),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              pickImage(ImageSource.camera);
            },
            child: Row(
              children: [
                const Icon(Icons.camera_alt, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text('Camera',
                      style: Theme.of(context).textTheme.titleMedium!),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Get.back(),
            child: Row(
              children: [
                const Icon(Icons.cancel, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text('Cancel',
                      style: Theme.of(context).textTheme.titleMedium!),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Text(
                    "Téléchargez vos documents",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.1),
                        GestureDetector(
                          onTap: () {
                            showOptionDialog(
                              context,
                            );
                          },
                          child: Center(
                            child: Container(
                              height: Get.height * 0.15,
                              width: Get.width * 0.3,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 4,
                                  color: const Color(0xffD08EFF),
                                ),
                              ),
                              child: image != null
                                  ? Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.file(
                                          image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : Center(
                                      child: Image.asset(
                                        IconClass.gallery,
                                        color: Colors.black,
                                        scale: 0.6,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.1),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Assurez-vous que tout\nvotre visage est  ',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: Colors.black),
                              children: <InlineSpan>[
                                WidgetSpan(
                                  child: ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [
                                          const Color(0xffF26DFF)
                                              .withOpacity(1),
                                          const Color(0xffF26DFF)
                                              .withOpacity(.15),
                                        ],
                                        stops: const [0.0, 1.0],
                                      ).createShader(bounds);
                                    },
                                    child: Text(
                                      'visible..',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.05),
                        Center(
                          child: SizedBox(
                            width: Get.width * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GradientText(colors: [
                                  const Color(0xffF26DFF).withOpacity(1),
                                  const Color(0xffF26DFF).withOpacity(.15),
                                ], text: '', fontSize: 18),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const CabSubscriptionPage());
                            },
                            child: Image.asset(ImageClass.buttonImage),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: -30,
                child: ClipOval(
                  child: SizedBox(
                    height: 100,
                    width: Get.width,
                    child: Image.asset(
                      'assets/gif/bottom_gif.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
