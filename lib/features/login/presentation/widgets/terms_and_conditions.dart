import 'package:doctor_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: Styles.font13moreLightgreyRegular,
          ),
          TextSpan(
              text: "Terms & Conditions", style: Styles.font13LightblackMeduim),
          TextSpan(text: " and", style: Styles.font13moreLightgreyRegular),
          TextSpan(
              text: " PrivacyPolicy",
              style: Styles.font13LightblackMeduim.copyWith(height: 1.5.h)),
        ],
      ),
    );
  }
}
