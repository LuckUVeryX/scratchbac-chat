import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/app/modules/welcome/welcome_controller.dart';
import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:flash_chat/app/widgets/logo.dart';
import 'package:flash_chat/app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WelcomeController controller = Get.find();

    return GetBuilder<WelcomeController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: controller.backgroundColorAnimation.value,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const LogoWidget(height: 120),
                Flexible(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Scratchbac Chat',
                        textAlign: TextAlign.center,
                        textStyle: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48.0,
                ),
                RoundedButton(
                  title: 'Log In',
                  color: Colors.lightBlueAccent,
                  onPressed: () => Get.toNamed(Routes.login),
                ),
                RoundedButton(
                  title: 'Register',
                  color: Colors.blueAccent,
                  onPressed: () => Get.toNamed(Routes.registration),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
