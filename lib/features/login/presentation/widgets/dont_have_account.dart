
import 'package:docdoc_1/core/routing/routes.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't Have an Account? ",
            style: Styles.font13LightblackMeduim,
          ),
          TextSpan(
              text: "Sign Up",
              style: Styles.font13PrimaryBlueMeduim,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  GoRouter.of(context).push(Routes.signupScreen);
                }),
        ],
      ),
    );
  }
}
