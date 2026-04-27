import 'package:docdoc_1/core/shared_widgets/custom_text_button.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomDoctorRow extends StatelessWidget {
  const CustomDoctorRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Styles.font18LightBlackSemiBold),
        CustomTextButton(
          buttonWidth: 39,
          horizontalPadding: 0,
          buttonHeight: 18,
          backgroundColor: Colors.transparent,
          buttonText: "See All",
          onPressed: () {},
          textStyle: Styles.font12PrimaryColorRegular,
        ),
      ],
    );
  }
}
