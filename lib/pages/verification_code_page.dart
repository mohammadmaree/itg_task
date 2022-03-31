import 'package:flutter/material.dart';
import 'package:itg_task_1/pages/new_password_page.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';
import 'package:itg_task_1/widgets/build_default_button.dart';
import 'package:itg_task_1/widgets/build_default_text.dart';
import 'package:itg_task_1/widgets/build_defult_text_form_field.dart';
import 'package:itg_task_1/widgets/build_default_logo_wave_dmc.dart';
import 'package:itg_task_1/widgets/password_recovery_instruction.dart';

class VerificationCodePage extends StatelessWidget {
  final String email;
  double? screenWidth;
  double? screenHeight;

  VerificationCodePage({
    required this.email,
  });
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: screenHeight!*0.05,
              left: screenWidth!*0.25,
              child: BuildDefaultLogoWaveDMC(
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
                image:WAVE_DMC_S,
              ),
            ),
            Container(
              height:screenHeight!,
              width:screenWidth!,
              child: Padding(
                padding: EdgeInsets.fromLTRB(screenWidth!*0.08,0.0,screenWidth!*0.08,0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PasswordRecoveryInstruction(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                      textTitle: 'We sent a code to your email',
                      textDetails: 'Enter the 8-digit verification code send to \n $email',
                    ),
                    BuildDefultTextFormField(
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                      hasSuffixIcon:false,
                      hint:'0 0 0 0 0 0 0 0 0' ,
                      prefixIcon:Icons.image,
                      border: true,
                      isprefixIcon: false,
                    ),
                    SizedBox(
                      height:screenHeight!*0.01,
                    ),
                    BuildDefaultText(
                      fontSize:screenWidth!*0.04,
                      color:HEX_BLUE_COLOR,
                      bold:true,
                      text:'Resent Code',
                    ),
                    SizedBox(
                      height:screenHeight!*0.03,
                    ),
                    BuildDefaultButton(
                      screenHeight:screenHeight!*0.06 ,
                      screenWidth:screenWidth!*0.8,
                      text:'Reset Password',
                      border: true,
                      color: HEX_GOLD_COLOR,
                      onPressed: (){
                        Navigator.of(context).pushNamed(NewPasswordPage.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
