import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_button.dart';
import 'package:docdoc_1/core/themes/app_colors.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAndScheduleTextAndButton extends StatelessWidget {
  const BookAndScheduleTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 167.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        image: const DecorationImage(
          image: AssetImage("assets/images/home_blue_pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Book and\nschedule with\nnearest doctor",
              style: Styles.font18WhiteMedium,
            ),
            verticalSpace(20),
            CustomTextButton(
              backgroundColor: Colors.white,
              borderRaduis: 48.r,
              buttonHeight: 38.h,
              buttonWidth: 109.w,
              buttonText: "Find Nearby",
              onPressed: () {},
              textStyle: Styles.font12PrimaryColorRegular,
            ),
          ],
        ),
      ),
    );
  }
}
