import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/shared_widgets/custom_button.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:doctor_app/features/onboarding/presentation/widgets/doctor_image.dart';
import 'package:doctor_app/features/onboarding/presentation/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboaringView extends StatelessWidget {
  const OnboaringView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                const LogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0.w),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: Styles.font14greyRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15.w,
                      ),
                      CustomTextButton(
                        buttonText: 'Get Started',
                        textStyle: Styles.font16whitesemiBold,
                        onPressed: () {
                          GoRouter.of(context).push(Routes.loginView);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
