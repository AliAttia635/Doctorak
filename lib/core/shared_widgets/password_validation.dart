import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/themes/app_colors.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          text: 'At least 1 lowercase letter',
          hasValidated: hasLowerCase,
        ),
        verticalSpace(6),
        buildValidationRow(
          text: 'At least 1 uppercase letter',
          hasValidated: hasUpperCase,
        ),
        verticalSpace(6),
        buildValidationRow(
          text: 'At least 1 special character',
          hasValidated: hasSpecialCharacters,
        ),
        verticalSpace(6),
        buildValidationRow(text: 'At least 1 number', hasValidated: hasNumber),
        verticalSpace(6),
        buildValidationRow(
          text: 'At least 8 characters long',
          hasValidated: hasMinLength,
        ),
        verticalSpace(6),
      ],
    );
  }
}

Widget buildValidationRow({required String text, required bool hasValidated}) {
  return Row(
    children: [
      const CircleAvatar(radius: 2.5, backgroundColor: AppColors.greyColor),
      horizontalSpace(6),
      Text(
        text,
        style: Styles.font13blueRegular.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? AppColors.greyColor : AppColors.primaryColor,
        ),
      ),
    ],
  );
}
