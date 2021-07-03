import 'package:flash_chat/app/modules/chat/chat_screen.dart';
import 'package:flash_chat/app/modules/login/login_screen.dart';
import 'package:flash_chat/app/modules/registration/registration_screen.dart';
import 'package:flash_chat/app/modules/welcome/welcome_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.WELCOME, page: () => WelcomeScreen()),
    GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
    GetPage(name: Routes.REGISTRATION, page: () => RegistrationScreen()),
    GetPage(name: Routes.CHAT, page: () => ChatScreen()),
  ];
}

abstract class Routes {
  static const WELCOME = '/';
  static const LOGIN = '/login';
  static const REGISTRATION = '/registration';
  static const CHAT = '/chat';
}
