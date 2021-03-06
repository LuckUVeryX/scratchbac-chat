import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.title,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
