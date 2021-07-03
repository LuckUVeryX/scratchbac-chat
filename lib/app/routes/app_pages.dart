import 'package:flash_chat/app/modules/chat/chat_screen.dart';
import 'package:flash_chat/app/modules/login/login_screen.dart';
import 'package:flash_chat/app/modules/registration/registration_screen.dart';
import 'package:flash_chat/app/modules/welcome/welcome_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.welcome, page: () => const WelcomeScreen()),
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(name: Routes.registration, page: () => const RegistrationScreen()),
    GetPage(name: Routes.chat, page: () => const ChatScreen()),
  ];
}

abstract class Routes {
  static const welcome = '/';
  static const login = '/login';
  static const registration = '/registration';
  static const chat = '/chat';
}
