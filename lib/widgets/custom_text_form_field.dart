import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconData prefixIcon;
  final bool obscureText;
  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: interTextStyle.copyWith(
        color: whiteColor,
      ),
      cursorColor: yellowColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: interTextStyle.copyWith(
          color: greyColor,
          fontSize: 14,
          fontWeight: light,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: greyColor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: yellowColor,
          ),
        ),
        focusColor: yellowColor,
      ),
    );
  }
}

class OtpTextFormField extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool autoFocus;

  const OtpTextFormField({
    Key? key,
    this.focusNode,
    this.controller,
    this.onChanged,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        color: otpColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextFormField(
        autofocus: autoFocus,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
        cursorColor: yellowColor,
        style: urbanistTextStyle.copyWith(
          color: whiteColor,
          fontWeight: semiBold,
          fontSize: 20,
        ),
        decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
              borderSide: BorderSide(color: yellowColor),
            )),
        onChanged: onChanged,
      ),
    );
  }
}
