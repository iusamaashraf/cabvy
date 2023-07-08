import 'dart:async';
import 'dart:ui';

import 'package:cabvy/views/pages/driver/notification/notification_page.dart';
import 'package:cabvy/views/pages/driver/profile/profile_page.dart';
import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  bool isOnline = true;

  bool isShowChatSection = false;

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      if (isOnline == true) {
        setState(() {
          isOnline = false;
          isShowChatSection = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          isOnline
              ? Positioned(
                  bottom: 0,
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.15),
                    child: Image.asset(
                      'assets/gif/question_gif.gif',
                    ),
                  ))
              : const SizedBox(),
          Positioned(
            bottom: Get.height * 0.15,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.06,
                  width: Get.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                      image: AssetImage('assets/gif/bg_gif.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white,
                            const Color(0xffD08EFF).withOpacity(.42),
                            const Color(0xff0B0013),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/icons/Vector.png'),
                          Image.asset('assets/icons/logo milieu.png'),
                          Image.asset('assets/icons/Vector(1).png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          isShowChatSection
              ? Positioned(
                  left: 0,
                  right: 0,
                  top: Get.height * 0.15,
                  child: Column(
                    children: [
                      Container(
                        // height: Get.height * 0.1,
                        width: Get.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const RouteRowData(
                                    header: 'Prise en charge',
                                    startingPoint: '2648 Harron Drive, Ba...',
                                    icon: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      width: Get.width * 0.5,
                                      height: .5,
                                      color: Colors.black,
                                    ),
                                  ),
                                  RouteRowData(
                                    header: 'Prise en charge',
                                    startingPoint: '2648 Harron Drive, Ba...',
                                    icon:
                                        Image.asset('assets/icons/ending.png'),
                                  ),
                                ],
                              ),
                              Container(
                                height: Get.height * 0.12,
                                width: Get.width * 0.27,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD08EFF),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  children: [
                                    Text(
                                      '3',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40),
                                    ),
                                    Text(
                                      'Min',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 22),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          isShowChatSection
              ? Positioned(
                  top: Get.height * 0.12,
                  child: Image.asset(
                    'assets/gif/sos.gif',
                    height: 40,
                  ),
                )
              : const SizedBox(),
          isShowChatSection
              ? Positioned(
                  top: Get.height * 0.12,
                  right: Get.width * 0.05,
                  child: Image.asset('assets/icons/edit.png'))
              : const SizedBox(),
          isShowChatSection
              ? Positioned(
                  top: Get.height * 0.28,
                  child: Image.asset(
                    'assets/icons/driverapps.png',
                  ))
              : const SizedBox(),
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
          isOnline
              ? Positioned(
                  top: Get.height * 0.05,
                  left: 0,
                  right: 0,
                  child: Transform.scale(
                    scale: .7,
                    child: CupertinoSwitch(
                      activeColor: const Color(0xffA288FF),
                      value: isOnline,
                      onChanged: (value) {
                        setState(() {
                          isOnline = value;
                        });
                      },
                    ),
                  ),
                )
              : const SizedBox(),
          isOnline
              ? const SizedBox()
              : Positioned(
                  bottom: Get.height * 0.25,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        isOnline = true;
                      });
                    },
                    child: Image.asset(
                      'assets/gif/diamond.gif',
                      height: Get.height * 0.15,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
          Positioned(
            top: Get.height * 0.05,
            left: Get.width * 0.02,
            child: GestureDetector(
              onTap: () => Get.to(() => const ProfilePage()),
              child: CircleAvatar(
                child: Image.asset('assets/images/progileimage.png'),
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.05,
            right: -Get.width * 0.05,
            child: GestureDetector(
              onTap: () => Get.to(() => const NotificationPage()),
              child: Image.asset(
                'assets/gif/mail.gif',
                height: Get.height * 0.05,
              ),
            ),
          ),
          isShowChatSection
              ? Positioned(
                  left: 0,
                  right: 0,
                  bottom: Get.height * 0.13,
                  child: Column(
                    children: [
                      Container(
                        height: Get.height * 0.4,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          // color: Colors.transparent,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xffD08EFF).withOpacity(.5),
                                const Color(0xffD08EFF).withOpacity(.5),
                                Colors.transparent,
                                // Colors.transparent,
                              ]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(55),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.width,
                                  height: Get.height * 0.37,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                          top: 10,
                                          left: 20,
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isShowChatSection = false;
                                                });
                                              },
                                              child: Image.asset(
                                                  'assets/icons/cross.png'))),
                                      Positioned(
                                          top: 10,
                                          child: Image.asset(
                                              'assets/icons/stars.png')),
                                      Positioned(
                                          top: 70,
                                          right: Get.width * 0.22,
                                          child: Image.asset(
                                              'assets/images/Ellipse 508.png')),
                                      Positioned(
                                        top: Get.height * 0.13,
                                        right: Get.width * 0.26,
                                        child: Image.asset(
                                          'assets/gif/diamond.gif',
                                          height: Get.height * 0.05,
                                          width: Get.width * 0.1,
                                        ),
                                      ),
                                      Positioned(
                                        top: 50,
                                        child: Container(
                                          height: Get.height * 0.13,
                                          width: Get.width * 0.26,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.3),
                                                  blurRadius: 12,
                                                  offset: const Offset(3, 0)),
                                            ],
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                const Color(0xffD08EFF)
                                                    .withOpacity(.5),
                                                const Color(0xffD08EFF)
                                                    .withOpacity(.5),
                                                const Color(0xffD08EFF),
                                              ],
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/progileimage.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                offset: const Offset(0, 4),
                                                blurRadius: 8,
                                                spreadRadius: -2,
                                              ),
                                            ],
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10, sigmaY: 10),
                                              child: Container(
                                                color:
                                                    Colors.grey.withOpacity(.1),
                                                child: Center(
                                                  child: Text(
                                                    '€25',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 26),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: Get.height * .17,
                                        right: 12,
                                        child: GradientText(
                                          colors: const [
                                            Color(0xffD08EFF),
                                            Colors.black,
                                          ],
                                          text: 'Sam\nVoir profil',
                                          fontSize: 14,
                                          isTopToBottom: true,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        child: SizedBox(
                                          width: Get.width,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        Get.width * 0.06),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: Get.width * 0.7,
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                          prefixIcon:
                                                              Image.asset(
                                                            'assets/icons/mail.png',
                                                            color: Colors.black,
                                                          ),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xffAF06FF),
                                                            ),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xffAF06FF),
                                                            ),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xffAF06FF),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xffAF06FF),
                                                            ),
                                                          ),
                                                          disabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xffAF06FF),
                                                            ),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xffAF06FF),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        height:
                                                            Get.height * 0.15,
                                                        width: Get.width * 0.15,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xffD4D4D4),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Center(
                                                          child: Icon(
                                                            Icons.phone,
                                                            color: Color(
                                                                0xffDB00FF),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class RouteRowData extends StatelessWidget {
  const RouteRowData({
    super.key,
    required this.header,
    required this.startingPoint,
    required this.icon,
  });
  final String header;
  final String startingPoint;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          icon,
          SizedBox(width: Get.width * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style: GoogleFonts.montserrat(
                    color: const Color(0xff818181), fontSize: 12),
              ),
              Text(
                startingPoint,
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
