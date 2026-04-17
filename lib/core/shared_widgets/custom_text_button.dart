import 'package:docdoc_1/core/themes/app_colors.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.textStyle,
    this.borderRaduis,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
  });

  final String buttonText;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final double? borderRaduis; //
  final Color? backgroundColor; //
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth; //
  final double? buttonHeight; //

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRaduis ?? 16),
        ),
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        fixedSize: Size(
          buttonWidth?.w ?? double.maxFinite,
          buttonHeight?.h ?? 52.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 14.h,
        ),
      ),
      child: Text(buttonText, style: Styles.font16whitesemiBold),
    );
  }
}
