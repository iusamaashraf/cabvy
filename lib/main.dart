import 'package:cabvy/views/pages/client/client_map/client_map_page.dart';
import 'package:cabvy/views/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const ClientMapPage(),
    );
  }
}
