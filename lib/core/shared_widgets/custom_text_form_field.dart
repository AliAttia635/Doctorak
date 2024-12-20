import 'package:doctor_app/core/themes/app_colors.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor});

  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColors.lighterGrey,
                width: 1.3,
              ),
            ),
        hintStyle: hintStyle ?? Styles.font14LightgreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
