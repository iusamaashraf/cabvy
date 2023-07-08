import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.apple,
            color: Colors.black,
          ),
          Text(
            'Pay',
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {}, child: Image.asset('assets/icons/wallet.png')),
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 14,
            backgroundColor: const Color(0xff3C3C43).withOpacity(.2),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
