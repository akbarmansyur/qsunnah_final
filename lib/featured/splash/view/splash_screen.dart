import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/featured/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.find();
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image.asset(
            //   'assets/images/logo.png',
            //   height: 200,
            // ),
            Center(
              child: Text(
                'Quotesunnah.com © ${DateTime.now().year.toString()}',
              ),
            ),
            const Center(
              child: Text(
                'Nyanyot developer\nbuild version (demo non_stable 0.1.2)',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
