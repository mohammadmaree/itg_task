import 'package:flutter/material.dart';

class BuildDefaultLogoWaveDMC extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  BuildDefaultLogoWaveDMC({
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth*0.5,
      height: screenHeight*0.12,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          //  fit: BoxFit.cover
        ),
      ),
    );
  }
}
