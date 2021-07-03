import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Hero(
        tag: 'logo',
        child: SizedBox(
          height: height ?? 200,
          child: Image.asset('images/logo.png'),
        ),
      ),
    );
  }
}
