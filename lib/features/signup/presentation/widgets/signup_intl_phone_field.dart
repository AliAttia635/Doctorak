import 'package:docdoc_1/core/helpers/app_regex.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_form_field.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:docdoc_1/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpIntlPhoneField extends StatelessWidget {
  const SignUpIntlPhoneField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: context.read<SignupCubit>().phoneController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Phone Number',
        hintStyle: Styles.font14LightgreyRegular,
        enabledBorder: buildEnabledBorder(),
        focusedBorder: buildFocuedBorder(),
        errorBorder: buildErrorBorder(),
        focusedErrorBorder: buildFocuedBorder(),
      ),
      initialCountryCode: 'EG',
      validator: (value) {
        if (value == null ||
            value.toString().isEmpty ||
            !AppRegex.isPhoneNumberValid(value.toString())) {
          return "please enter a valid phone number";
        }
      },
    );
  }
}
