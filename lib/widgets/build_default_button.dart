
import 'package:flutter/material.dart';

class BuildDefaultButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final int color;
  final String text;
  final bool border;
  final VoidCallback onPressed;
  BuildDefaultButton({
    required this.screenWidth,
    required this.screenHeight,
    required this.color,
    required this.text,
    required this.border,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: ElevatedButton(
        onPressed:onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.06
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(color)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: border?BorderRadius.circular(screenWidth * 0.02,):BorderRadius.circular(0),
            ),
          ),
        ),
      ),
    );
  }
}