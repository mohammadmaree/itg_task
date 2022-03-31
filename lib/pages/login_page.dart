import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/resource/images.dart';
import 'package:itg_task_1/widgets/build_back_ground.dart';
import 'package:itg_task_1/widgets/build_default_button.dart';
import 'package:itg_task_1/widgets/build_button_finger.dart';
import 'package:itg_task_1/widgets/build_card_login.dart';
import 'package:itg_task_1/widgets/build_info_login.dart';
import 'package:itg_task_1/widgets/build_logo_itg.dart';
import 'package:itg_task_1/widgets/build_default_logo_wave_dmc.dart';

class LoginPage extends StatelessWidget {
  static String routeName = 'LoginPageRouteName';
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BuildBackGround(
              screenWidth:screenWidth!,
              screenHeight:screenHeight!,
            ),
            Positioned(
              top: screenHeight!*0.1,
              left: screenWidth!*0.25,
              child: BuildDefaultLogoWaveDMC(
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
                image: WAVE_DMC_WHITE_S,
              ),
            ),
            BuildCardLogin(
              screenHeight:screenHeight!,
              screenWidth:screenWidth!,
            ),
            BuildLogoITG(
              screenHeight:screenHeight!,
              screenWidth:screenWidth!,
            ),
            Positioned(
              left:screenWidth!*0.2,
              top:screenHeight!*0.7,
              child: BuildDefaultButton(
                screenHeight:screenHeight!*0.05 ,
                screenWidth:screenWidth!*0.6,
                text:'Sign Up',
                border: false,
                color: HEX_GOLD_COLOR,
                onPressed: (){},
              ),
            ),
            BuildButtonFinger(
              screenHeight:screenHeight! ,
              screenWidth:screenWidth!,
            ),
            BuildInfLogin(
              screenWidth:screenWidth!,
              screenHeight:screenHeight!,
            ),
          ],
        ),
      ),
    );
  }
}
//Place your finger to login
//WavOMS@ 3.0 @ 2021 INTEGRATED TECHNOLIGY GROUP