import 'package:flutter/material.dart';
import 'package:itg_task_1/pages/login_page.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';
import 'package:itg_task_1/widgets/build_default_button.dart';
import 'package:itg_task_1/widgets/build_defult_text_form_field.dart';
import 'package:itg_task_1/widgets/build_default_logo_wave_dmc.dart';
import 'package:itg_task_1/widgets/password_recovery_instruction.dart';

class NewPasswordPage extends StatelessWidget {
  static String routeName = 'NewPasswordPageRouteName';
  double? screenWidth;
  double? screenHeight;
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
                      textTitle: 'Choose a new password',
                      textDetails: 'Create a new password that is at least 8 characters long',
                    ),
                    BuildDefultTextFormField(
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                      hasSuffixIcon:false,
                      hint:'New password' ,
                      prefixIcon:Icons.image,
                      border: true,
                      isprefixIcon: false,
                    ),
                    SizedBox(
                      height:screenHeight!*0.03,
                    ),
                    BuildDefultTextFormField(
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                      hasSuffixIcon:false,
                      hint:'New password Confirmation' ,
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
                      text:'submit',
                      border: true,
                      color: HEX_GOLD_COLOR,
                      onPressed: (){
                        Navigator.of(context).pushNamed(LoginPage.routeName);
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
