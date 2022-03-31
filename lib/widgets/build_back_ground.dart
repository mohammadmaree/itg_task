import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';

class BuildBackGround extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildBackGround({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight*0.45,
          decoration:const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  BACKGROUND,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          color: const Color(HEX_WHITE_COLOR),
          width: screenWidth,
          height: screenHeight*0.55,
        ),
      ],
    );
  }
}
