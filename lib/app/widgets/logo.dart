import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero',
      child: Container(
        height: height ?? 200,
        child: Image.asset('images/logo.png'),
      ),
    );
  }
}
