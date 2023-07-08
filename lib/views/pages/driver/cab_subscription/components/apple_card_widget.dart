import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppleCardWidget extends StatelessWidget {
  const AppleCardWidget({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset('assets/icons/Card Icon.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apple Card',
                  style:
                      GoogleFonts.montserrat(fontSize: 17, color: Colors.black),
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
              onTap: onTap,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
