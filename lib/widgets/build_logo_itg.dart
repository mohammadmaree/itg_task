import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';

class BuildLogoITG extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildLogoITG({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight*0.3,
      left: screenWidth*0.375,
      child:Container(
        width: screenWidth*0.25,
        height: screenWidth*0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth*0.05),
          boxShadow: const [
            BoxShadow(
              blurRadius: 1.0,
              color: Colors.black12,
              spreadRadius: 2.0,
            )
          ],
          color: Color(HEX_WHITE_COLOR),
          image: DecorationImage(
            image: NetworkImage(
              ITG_LOGO_S,
            ),
            //  fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
