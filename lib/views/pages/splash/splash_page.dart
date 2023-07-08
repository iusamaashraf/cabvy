import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../subscription/subscription_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5),
        () => Get.offAll(() => const SubscriptionPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Image.asset('assets/gif/Splash.gif'),
      ),
    );
  }
}
