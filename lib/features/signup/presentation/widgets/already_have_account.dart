import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              text: "Login",
              style: Styles.font13PrimaryBlueMeduim,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  GoRouter.of(context).push(Routes.loginScreen);
                }),
        ],
      ),
    );
  }
}
