import 'package:flutter/material.dart';
import 'package:tap_doc_app/core/theme/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By Logging, you agree to our ',
            style: Styles.font13GreyRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: Styles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: Styles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: Styles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
