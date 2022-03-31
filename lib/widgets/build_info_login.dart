import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/widgets/build_default_text.dart';

class BuildInfLogin extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildInfLogin({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: screenHeight*0.87,
          left: screenWidth*0.29,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildDefaultText(
                text:'Place your finger to login',
                color:HEX_BLUE_COLOR,
                fontSize:screenWidth*0.038,
                bold:false,
              ),
            ],
          ),
        ),
        Positioned(
          top: screenHeight*0.95,
          left: screenWidth*0.18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildDefaultText(
                text:'WavOMS@ 3.0 @ 2021 INTEGRATED TECHNOLIGY GROUP',
                color:HEX_BLUE_COLOR,
                fontSize:screenWidth*0.025,
                bold:false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
