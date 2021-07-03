import 'package:flash_chat/app/modules/authentication/username/username_controller.dart';
import 'package:flash_chat/app/widgets/logo.dart';
import 'package:flash_chat/app/widgets/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsernameController controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<UsernameController>(builder: (_) {
        return ModalProgressHUD(
          inAsyncCall: controller.showSpinner,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const LogoWidget(),
                const SizedBox(height: 48.0),
                TextField(
                  controller: controller.usernameEditingController,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your username'),
                ),
                const SizedBox(height: 24.0),
                RoundedButton(
                  title: 'Submit',
                  color: Colors.blueAccent,
                  onPressed: () {
                    controller.updateDisplayName();
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
