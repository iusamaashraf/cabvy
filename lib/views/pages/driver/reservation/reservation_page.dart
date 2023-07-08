import 'dart:async';

import 'package:cabvy/constants/icons.dart';
import 'package:cabvy/views/widgets/bottom_animation.dart';
import 'package:cabvy/views/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../client/client_map/client_map_page.dart';
import 'components/reservation_selected_date.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  DateTime selectedDate = DateTime.now();
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String formatted = formatter.format(now);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              print('object');
              // Get.back();
            },
            child: Image.asset(
              IconClass.arrowBack,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Réservations',
          style: GoogleFonts.montserrat(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Identité du conducteur',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Get.height * 0.07,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xffD08EFF),
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                formatted == '' ? 'DE' : formatted,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black45),
                              ),
                              GestureDetector(
                                  onTap: () => _selectDate(context),
                                  child: Image.asset(
                                    'assets/icons/calendar 1.png',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.07,
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xffD08EFF),
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                formatted == '' ? 'DE' : formatted,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black45),
                              ),
                              GestureDetector(
                                  onTap: () => _selectDate(context),
                                  child: Image.asset(
                                    'assets/icons/calendar 1.png',
                                    color: const Color(0xffD08EFF),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.05),
                  const ReservationSelectedDate(),
                  SizedBox(height: Get.height * 0.02),
                  Container(
                    height: Get.height * 0.25,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: GoogleMap(
                        scrollGesturesEnabled: false,
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Container(
                    height: Get.height * 0.17,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                icon: Image.asset('assets/icons/ending.png'),
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
              Positioned(
                bottom: -Get.height * 0.05,
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
