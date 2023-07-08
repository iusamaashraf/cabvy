import 'dart:io';

import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/constants/images.dart';
import 'package:cabvy/views/pages/driver/download_document/download_document_page.dart';
import 'package:cabvy/views/widgets/bottom_animation.dart';
import 'package:cabvy/views/widgets/common_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class VehicleDetailPage extends StatefulWidget {
  const VehicleDetailPage({super.key});

  @override
  State<VehicleDetailPage> createState() => _VehicleDetailPageState();
}

class _VehicleDetailPageState extends State<VehicleDetailPage> {
  final TextEditingController brandController = TextEditingController();

  final TextEditingController modelController = TextEditingController();

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

// drop down for model year of car
  final List<String> _carModel = [
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
  ];
  String? _selectedCarModel;

  final List<String> _carColor = [
    'Green',
    'Red',
    'Grey',
    'Mate',
    'Black',
  ];
  String? _selectedCarColor;

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
                      "Les détails du véhicule",
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
                          SizedBox(height: Get.height * 0.05),
                          GestureDetector(
                            onTap: () {
                              showOptionDialog(
                                context,
                              );
                            },
                            child: Container(
                              height: 75,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: Colors.black),
                              ),
                              child: image != null
                                  ? Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.file(
                                          image!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : const Icon(
                                      Icons.image,
                                      size: 40,
                                      color: Colors.transparent,
                                    ),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.05),
                          CommonField(
                            keyBoardType: TextInputType.name,
                            controller: brandController,
                            onChanged: (value) {},
                            hintText: 'Marque',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          CommonField(
                            keyBoardType: TextInputType.emailAddress,
                            controller: modelController,
                            onChanged: (value) {},
                            hintText: 'Modèle',
                            validator: (value) {
                              return;
                            },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: Get.height * 0.08,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isExpanded: true,
                                          icon: const Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: Color(0xffD08EFF),
                                          ),
                                          hint: Text(
                                            'An',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black
                                                    .withOpacity(.4),
                                                fontSize: 15),
                                          ),
                                          value: _selectedCarModel,
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedCarModel = newValue;
                                            });
                                          },
                                          items: _carModel.map((model) {
                                            return DropdownMenuItem(
                                              value: model,
                                              child: Text(
                                                model,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 15),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: Get.width * 0.04),
                              Expanded(
                                child: Container(
                                  height: Get.height * 0.08,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isExpanded: true,
                                          icon: const Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: Color(0xffD08EFF),
                                          ),
                                          hint: Text(
                                            'Couleur',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black
                                                    .withOpacity(.4),
                                                fontSize: 15),
                                          ),
                                          value: _selectedCarColor,
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedCarColor = newValue;
                                            });
                                          },
                                          items: _carColor.map((location) {
                                            return DropdownMenuItem(
                                              value: location,
                                              child: Text(
                                                location,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 15),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.1),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const DownloadDocumentPage());
                            },
                            child: Image.asset(ImageClass.buttonImage),
                          ),
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
