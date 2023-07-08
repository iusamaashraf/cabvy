import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomAnimation extends StatelessWidget {
  const BottomAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
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
    );
  }
}
