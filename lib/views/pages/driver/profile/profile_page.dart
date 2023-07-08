import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/views/pages/choose_panel/choose_panel_page.dart';
import 'package:cabvy/views/pages/driver/download_document/download_document_page.dart';
import 'package:cabvy/views/pages/driver/gains/gains_page.dart';
import 'package:cabvy/views/pages/driver/reservation/reservation_page.dart';
import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset('assets/icons/back.png')),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/calendar.png',
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Positioned(
              bottom: -80,
              child: ClipOval(
                child: SizedBox(
                  height: 150,
                  width: Get.width,
                  child: Image.asset(
                    'assets/gif/bottom_gif.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset('assets/icons/stars.png'),
                      Container(
                        height: Get.height * 0.15,
                        width: Get.width * 0.3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.3),
                                blurRadius: 12,
                                offset: const Offset(3, 0)),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xffD08EFF).withOpacity(.5),
                              const Color(0xffD08EFF).withOpacity(.5),
                              const Color(0xffD08EFF),
                            ],
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/progileimage.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GradientText(
                          isTopToBottom: true,
                          colors: const [Color(0xffEE2FFF), Color(0xff000000)],
                          text: 'Sam',
                          fontSize: 20),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topRight,
                        child: GradientText(
                            isTopToBottom: true,
                            colors: const [
                              Color(0xffEE2FFF),
                              Color(0xff000000)
                            ],
                            text: '+380639533980',
                            fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.profile,
                          onTap: () {},
                          title: 'Editer le profil'),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.reservationIcon,
                          onTap: () => Get.to(() => ReservationPage()),
                          title: 'Réservations'),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.payment,
                          onTap: () {},
                          title: 'Méthodes de paiements'),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.offers,
                          onTap: () {},
                          title: 'Offres et promotions'),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: GestureDetector(
                          onTap: () => Get.to(() => const GainsPage()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(IconClass.gains),
                              const SizedBox(width: 10),
                              GradientText(colors: const [
                                Color(0xffBFAEFF),
                                Color(0xffB084FF),
                                Color(0xffE5C1FF)
                              ], text: 'Gains', fontSize: 18),
                              const Spacer(),
                              Image.asset(IconClass.circularForward),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.faq, onTap: () {}, title: 'FAQ'),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.terms,
                          onTap: () {},
                          title: 'Termes et conditions'),
                      const SizedBox(height: 10),
                      DownloadRowDataWidget(
                          image: IconClass.privacy,
                          onTap: () {},
                          title: 'Politique de confidentialité'),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                              'assets/icons/logo_france-removebg-preview 1.png'),
                          GestureDetector(
                              onTap: () =>
                                  Get.offAll(() => const ChoosePanelPage()),
                              child: Image.asset('assets/icons/Logout.png')),
                        ],
                      ),
                    ],
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
