import 'package:flash_chat/app/modules/welcome/welcome_binding.dart';
import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.welcome,
      initialBinding: WelcomeBinding(),
      getPages: AppPages.pages,
    );
  }
}
