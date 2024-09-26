import 'package:flutter/material.dart';
import 'package:tap_doc_app/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At Least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At Least 1 UPPERCASE letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At Least 1 Special Character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At Least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At Least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: Styles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.grey : ColorsManager.darkBlue,
          ),
        )
      ],
    );
  }
}
