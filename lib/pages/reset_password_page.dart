import 'package:flutter/material.dart';
import 'package:itg_task_1/pages/verification_code_page.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';
import 'package:itg_task_1/widgets/build_default_button.dart';
import 'package:itg_task_1/widgets/build_defult_text_form_field.dart';
import 'package:itg_task_1/widgets/build_default_logo_wave_dmc.dart';
import 'package:itg_task_1/widgets/password_recovery_instruction.dart';

class ResetPasswordPage extends StatelessWidget {
  static String routeName = 'ResetPasswordPageRouteName';
  double? screenWidth;
  double? screenHeight;
  String email ='mohammed99.m964@gmail.com';
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
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
                      textTitle: 'Forgot your password?',
                      textDetails: 'Enter your email address and we\'ll send you a verification code to reset your password ',
                    ),
                    BuildDefultTextFormField(
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                      hasSuffixIcon:false,
                      hint:email,
                      prefixIcon:Icons.image,
                      border: true,
                      isprefixIcon: false,
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
                        //email
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodePage(email: email,)));
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
