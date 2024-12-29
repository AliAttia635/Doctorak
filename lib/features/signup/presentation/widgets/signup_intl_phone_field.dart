import 'package:doctor_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpIntlPhoneField extends StatelessWidget {
  const SignUpIntlPhoneField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
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
      validator: (data) {},
    );
  }
}
