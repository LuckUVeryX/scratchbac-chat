import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/app/modules/landing/landing_binding.dart';
import 'package:flash_chat/app/modules/landing/landing_controller.dart';
import 'package:flash_chat/app/modules/landing/landing_screen.dart';
import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LandingBinding(),
      getPages: AppPages.pages,
      home: GetBuilder<LandingController>(
        builder: (_) {
          return const LandingScreen();
        },
      ),
    );
  }
}
