import 'package:flutter/material.dart';
import 'package:itg_task_1/pages/reset_password_page.dart';
import 'package:itg_task_1/resource/colors.dart';
import 'package:itg_task_1/widgets/build_default_text.dart';
import 'package:itg_task_1/widgets/build_defult_text_form_field.dart';

class BuildCardLogin extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildCardLogin({
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top:screenHeight*0.37,
        right:screenWidth*0.1,
        child: Container(
          width:screenWidth*0.8,
          height:screenHeight*0.36,
          decoration: BoxDecoration(
              color: Color(HEX_WHITE_COLOR),
              borderRadius: BorderRadius.circular(screenWidth*0.05),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 1.0,
                  color: Colors.black12,
                  spreadRadius: 2.0,
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.fromLTRB(0.0,screenHeight*0.06,0.0,screenHeight*0.02,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildDefaultText(
                      text:'ITG Demo',
                      color:HEX_BLUE_COLOR,
                      fontSize:screenWidth*0.042,
                      bold:true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.04,screenWidth * 0.03,screenWidth * 0.04,screenWidth * 0.02),
                child: BuildDefultTextFormField(
                  screenWidth:screenWidth,
                  screenHeight:screenHeight,
                  hint:'username',
                  hasSuffixIcon:false,
                  prefixIcon:Icons.person,
                  border: false,
                  isprefixIcon: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.04,screenWidth * 0.03,screenWidth * 0.04,screenWidth * 0.02),
                child: BuildDefultTextFormField(
                  screenWidth:screenWidth,
                  screenHeight:screenHeight,
                  hint:'password',
                  hasSuffixIcon:true,
                  prefixIcon:Icons.lock_outline,
                  border: false,
                  isprefixIcon: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.04,0.0,screenWidth * 0.04,screenWidth * 0.01),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(ResetPasswordPage.routeName);
                  },
                  child:  BuildDefaultText(
                    text:'Forgot Password',
                    color:HEX_GREY_COLOR,
                    fontSize:screenWidth*0.04,
                    bold:true,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
