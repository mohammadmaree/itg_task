import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';

class BuildButtonFinger extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildButtonFinger({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight*0.77,
      left: screenWidth*0.4,
      child:Container(
        width: screenWidth*0.17,
        height: screenWidth*0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth*0.05),
          color: const Color(HEX_WHITE_COLOR),
          image: const DecorationImage(
            image: NetworkImage(
              FINGER_S,
            ),
            //  fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
