import 'dart:io';

import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/constants/images.dart';
import 'package:cabvy/views/pages/client/client_dial_page/client_dial_page.dart';
import 'package:cabvy/views/widgets/common_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ClientBasicDetailPage extends StatefulWidget {
  const ClientBasicDetailPage({super.key});

  @override
  State<ClientBasicDetailPage> createState() => _ClientBasicDetailPageState();
}

class _ClientBasicDetailPageState extends State<ClientBasicDetailPage> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController genderController = TextEditingController();

  final TextEditingController dobController = TextEditingController();

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
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.1),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Profil complet",
                      style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    GestureDetector(
                      onTap: () {
                        showOptionDialog(
                          context,
                        );
                      },
                      child: Center(
                        child: Container(
                          height: Get.height * 0.1,
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
                    SizedBox(height: Get.height * 0.02),
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
                            onTap: () => Get.to(() => const ClientDialPage()),
                            child: Image.asset(ImageClass.buttonImage),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -10,
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
    );
  }
}
