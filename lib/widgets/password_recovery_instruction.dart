import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/widgets/build_default_text.dart';

class PasswordRecoveryInstruction extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String textTitle;
  final String textDetails;
  PasswordRecoveryInstruction({
    required this.screenHeight,
    required this.screenWidth,
    required this.textTitle,
    required this.textDetails,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0,screenHeight*0.2,0.0,screenHeight*0.03,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildDefaultText(
            text:textTitle,
            color:HEX_BLACK_COLOR,
            fontSize:screenWidth*0.055,
            bold:true,
          ),
          SizedBox(
            height:screenHeight*0.01,
          ),
          BuildDefaultText(
            text:textDetails,
            color:HEX_GREY_COLOR,
            fontSize:screenWidth*0.035,
            bold:false,
          ),
        ],
      ),
    );
  }
}
