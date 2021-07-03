import 'package:flash_chat/app/modules/authentication/login/login_binding.dart';
import 'package:flash_chat/app/modules/authentication/login/login_screen.dart';
import 'package:flash_chat/app/modules/authentication/registration/registration_binding.dart';
import 'package:flash_chat/app/modules/authentication/registration/registration_screen.dart';
import 'package:flash_chat/app/modules/authentication/username/username_binding.dart';
import 'package:flash_chat/app/modules/authentication/username/username_screen.dart';
import 'package:flash_chat/app/modules/chat/chat_binding.dart';
import 'package:flash_chat/app/modules/chat/chat_screen.dart';
import 'package:flash_chat/app/modules/landing/landing_binding.dart';
import 'package:flash_chat/app/modules/landing/landing_screen.dart';
import 'package:flash_chat/app/modules/welcome/welcome_binding.dart';
import 'package:flash_chat/app/modules/welcome/welcome_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.landing,
        page: () => const LandingScreen(),
        binding: LandingBinding()),
    GetPage(
        name: Routes.welcome,
        page: () => const WelcomeScreen(),
        binding: WelcomeBinding()),
    GetPage(
        name: Routes.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.registration,
        page: () => const RegistrationScreen(),
        binding: RegistrationBinding()),
    GetPage(
      name: Routes.username,
      page: () => const UsernameScreen(),
      binding: UsernameBinding(),
    ),
    GetPage(
        name: Routes.chat,
        page: () => const ChatScreen(),
        binding: ChatBinding()),
  ];
}

abstract class Routes {
  static const landing = '/';
  static const welcome = '/welcome';
  static const login = '/login';
  static const registration = '/registration';
  static const username = '/username';
  static const chat = '/chat';
}
