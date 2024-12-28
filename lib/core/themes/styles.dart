import 'package:doctor_app/core/themes/app_colors.dart';
import 'package:doctor_app/core/themes/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font14greyRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.greyColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13LightblackMeduim = TextStyle(
    fontSize: 13.sp,
    color: AppColors.lightBlack,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font13PrimaryBlueMeduim = TextStyle(
    fontSize: 13.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14LightgreyRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGrey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13moreLightgreyRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.moreLighterGrey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13blueRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16whitesemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font15BlackMeduim = TextStyle(
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font14BlueSemiBold = TextStyle(
      fontSize: 14.sp,
      color: Colors.blue,
      fontWeight: FontWeightHelper.semiBold);
}
