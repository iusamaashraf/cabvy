import 'package:cabvy/views/pages/client/client_phone/client_phone_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ClientLoginPage extends StatelessWidget {
  const ClientLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/gif/bg_gif.gif',
            fit: BoxFit.cover,
            height: Get.height,
          ),
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ClientPhonePage());
                  },
                  child: Container(
                    height: 151,
                    width: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xffF26DFF).withOpacity(1),
                          const Color(0xffF26DFF).withOpacity(.15),
                          const Color(0xffF26DFF).withOpacity(1),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: SvgPicture.asset(
                              'assets/images/INSCRIPTION.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.2),
                Container(
                  height: 151,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xffF26DFF).withOpacity(1),
                        const Color(0xffF26DFF).withOpacity(.15),
                        const Color(0xffF26DFF).withOpacity(1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: Get.height * 0.1,
                        width: Get.width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SvgPicture.asset(
                            'assets/images/CONNEXION.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
