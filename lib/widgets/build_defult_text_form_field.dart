
import 'package:flutter/material.dart';
import 'package:itg_task_1/resource/colors.dart';

class BuildDefultTextFormField extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final IconData prefixIcon;
  final String hint;
  final bool hasSuffixIcon;
  final bool border;
  final bool isprefixIcon;
  BuildDefultTextFormField({
    required this.screenWidth,
    required this.screenHeight,
    required this.prefixIcon,
    required this.hint,
    required this.hasSuffixIcon,
    required this.border,
    required this.isprefixIcon
  });

  @override
  State<BuildDefultTextFormField> createState() => _BuildDefultTextFormFieldState();
}

class _BuildDefultTextFormFieldState extends State<BuildDefultTextFormField> {
  bool hidePassword = true;

  void changeHidePassword() {
    hidePassword = !hidePassword;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.screenWidth * 0.8,
      height: widget.screenHeight * 0.06,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(
            fontSize: widget.screenWidth * 0.04,
          color: Color(HEX_GREY_COLOR)
        ),
        decoration: widget.isprefixIcon?
        InputDecoration(
          prefixIcon: Icon(
            widget.prefixIcon,
            color: const Color(HEX_GREY_COLOR),
            size: widget.screenWidth * 0.05,
          ),
          suffixIcon: widget.hasSuffixIcon
              ? IconButton(
            icon: Icon(
              hidePassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: hidePassword
                  ? const Color(HEX_BLUE_COLOR)
                  : const Color(HEX_GREY_COLOR),
              size: widget.screenWidth * 0.045,
            ),
            onPressed: (){
              setState(() {
                changeHidePassword();
              });
            },
            color: const Color(HEX_BLUE_COLOR),
          ) : null,
          filled: true,
          border: OutlineInputBorder(
               borderRadius: widget.border?BorderRadius.circular(widget.screenWidth * 0.02,):BorderRadius.circular(0),
              borderSide: const BorderSide(
                color: Color(HEX_GREY_COLOR),
                width: 0.5,
              )
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(HEX_GREY_COLOR),
            ),
          ),
          fillColor: Colors.white,
          hintText: widget.hint,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.7),
              fontSize: widget.screenWidth * 0.035
          ),
        ):
        InputDecoration(
          suffixIcon: widget.hasSuffixIcon
              ? IconButton(
            icon: Icon(
              hidePassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: hidePassword
                  ? const Color(HEX_BLUE_COLOR)
                  : Colors.grey,
              size: widget.screenWidth * 0.045,
            ),
            onPressed: (){},
            color: const Color(HEX_BLUE_COLOR),
          ) : null,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: widget.border?BorderRadius.circular(widget.screenWidth * 0.02,):BorderRadius.circular(0),
              borderSide: const BorderSide(
                color: Color(HEX_GREY_COLOR),
                width: 0.5,
              )
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(HEX_GREY_COLOR),
            ),
          ),
          fillColor: Colors.white,
          hintText: widget.hint,
          hintStyle: TextStyle(
              color: Color(HEX_GREY_COLOR),
              fontSize: widget.screenWidth * 0.038
          ),
        )
      ),
    );
  }
}