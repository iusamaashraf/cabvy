import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/constants/images.dart';
import 'package:cabvy/views/pages/driver/profile/update_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadDocumentPage extends StatelessWidget {
  const DownloadDocumentPage({super.key});

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
                        Text(
                          'Identité du conducteur',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 15),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Pièce d’identité ( recto-verso )',
                          image: IconClass.document,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Permis de conduire ( recto - verso )',
                          image: IconClass.idcard,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Carte vtc ( recto - verso )',
                          image: IconClass.vtc,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'RC PRO',
                          image: IconClass.rcpro,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Macaron VTC',
                          image: IconClass.macronVtc,
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Identité du véhicule',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Carte grise',
                          image: IconClass.document,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Carte verte',
                          image: IconClass.document,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Photo du véhicule de face ',
                          image: IconClass.gallery,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Contrôle technique -1 an',
                          image: IconClass.technicalControl,
                        ),
                        const SizedBox(height: 10),
                        DownloadRowDataWidget(
                          onTap: () {},
                          title: 'Assurance à titre onéreux',
                          image: IconClass.assurance,
                        ),
                        SizedBox(height: Get.height * 0.1),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const UpdateProfilePage());
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

class DownloadRowDataWidget extends StatelessWidget {
  const DownloadRowDataWidget({
    super.key,
    required this.image,
    required this.onTap,
    required this.title,
  });
  final String image;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          const SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Image.asset(IconClass.circularForward),
        ],
      ),
    );
  }
}
