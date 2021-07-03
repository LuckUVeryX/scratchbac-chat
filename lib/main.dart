import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:flash_chat/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: kDarkTheme,
      initialRoute: Routes.welcome,
      getPages: AppPages.pages,
    );
  }
}
