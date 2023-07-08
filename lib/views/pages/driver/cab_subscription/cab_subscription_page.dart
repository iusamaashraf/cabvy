import 'dart:async';
import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/views/pages/driver/dial_code/dial_code_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'components/apple_card_widget.dart';
import 'components/bottom_sheet_header.dart';

class CabSubscriptionPage extends StatefulWidget {
  const CabSubscriptionPage({super.key});

  @override
  State<CabSubscriptionPage> createState() => _CabSubscriptionPageState();
}

class _CabSubscriptionPageState extends State<CabSubscriptionPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  bool showHeaderAnimation = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
                child: Image.asset(
                  'assets/gif/question_gif.gif',
                ),
              )),
          Positioned(
            bottom: -70,
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
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(color: Colors.black54),
          ),
          showHeaderAnimation
              ? Positioned(
                  top: 20,
                  left: 20,
                  child: Image.asset(IconClass.calendar),
                )
              : const SizedBox(),
          showHeaderAnimation
              ? Positioned(
                  top: -Get.height * 0.3,
                  right: -Get.width * 0.2,
                  child: Container(
                    height: Get.height * 0.8,
                    width: Get.width * 0.8,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/gif/bg_gif.gif'),
                          fit: BoxFit.cover,
                        )),
                  ),
                )
              : const SizedBox(),
          Positioned(
            bottom: Get.height * 0.1,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  showHeaderAnimation = false;
                  showModalBottomSheet(
                    enableDrag: true,
                    // isScrollControlled: true,
                    // isDismissible: false,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      const desiredHeightFraction = 1.8;
                      return FractionallySizedBox(
                        heightFactor: desiredHeightFraction,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(60.0),
                              topRight: Radius.circular(60.0),
                              bottomLeft: Radius.circular(60.0),
                              bottomRight: Radius.circular(60.0),
                            ),
                            child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffEBEBEB),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60.0),
                                    topRight: Radius.circular(60.0),
                                    bottomLeft: Radius.circular(60.0),
                                    bottomRight: Radius.circular(60.0),
                                  ),
                                ),
                                // padding:
                                //     const EdgeInsets.symmetric(vertical: 16),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const SizedBox(height: 20),
                                    const BottomSheetHeader(),
                                    const SizedBox(height: 20),
                                    AppleCardWidget(
                                      onTap: () {},
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      width: Get.width * 0.9,
                                      // height: Get.height * 0.06,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 12,
                                            color: Colors.black12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            const GabvyCard(),
                                            const SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image.asset(
                                                      'assets/icons/contact.png'),
                                                ),
                                                const SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Contact',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontSize: 17,
                                                          color: const Color(
                                                                  0xff3C3C43)
                                                              .withOpacity(.6),
                                                        )),
                                                    Text(
                                                      'j.appleseed@icloud.com',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      '(458) 555-2863',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image.asset(
                                                      'assets/icons/address.png'),
                                                ),
                                                const SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Ship to',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontSize: 17,
                                                          color: const Color(
                                                                  0xff3C3C43)
                                                              .withOpacity(.6),
                                                        )),
                                                    Text(
                                                      '27 Fredrick Butte Rd',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Brothers OR 97712\nUnited States',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      // height: Get.height * 0.1,
                                      width: Get.width,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 12)
                                          ],
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(60),
                                            bottomRight: Radius.circular(60),
                                          )),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18,
                                                        vertical: 10),
                                                    child: Text(
                                                      'Pay PACSUN',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 12,
                                                              color: const Color(
                                                                      0xff3C3C43)
                                                                  .withOpacity(
                                                                      .6)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18),
                                                    child: Text(
                                                      '€50.00',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 24,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              GestureDetector(
                                                onTap: () => Get.to(
                                                    () => const DialCodePage()),
                                                child: const Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.black,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Container(
                                            width: Get.width,
                                            height: .5,
                                            color: Colors.grey,
                                          ),
                                          const SizedBox(height: 20),
                                          Center(
                                            child: Image.asset(
                                                'assets/icons/Confirm with Button.png'),
                                          ),
                                          const SizedBox(height: 20),
                                          Center(
                                            child: Text(
                                              'Confirm with Side Button',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      );
                    },
                  );
                });
              },
              child: Image.asset('assets/images/25e.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class GabvyCard extends StatelessWidget {
  const GabvyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset('assets/icons/gabvy.png'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gabvy Card',
              style: GoogleFonts.montserrat(fontSize: 17, color: Colors.black),
            ),
            Text(
              '•••• 1234',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: const Color(0xff3C3C43).withOpacity(.6),
              ),
            ),
            // const Spacer(),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Get.to(() => const DialCodePage()),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
