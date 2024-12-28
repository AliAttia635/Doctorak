import 'package:doctor_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account? ",
            style: Styles.font13LightblackMeduim,
          ),
          TextSpan(
            text: "Sign Up",
            style: Styles.font13PrimaryBlueMeduim,
          ),
        ],
      ),
    );
  }
}
