import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation backgroundColorAnimation;
  final duration = const Duration(seconds: 5);

  @override
  void onInit() {
    super.onInit();
    _animationController = AnimationController(
      duration: duration,
      vsync: this,
      upperBound: 1,
    );
    backgroundColorAnimation =
        ColorTween(begin: Colors.blueGrey, end: Colors.grey[850])
            .animate(_animationController)
              ..addListener(() => update());
    _animationController.forward();
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }
}
