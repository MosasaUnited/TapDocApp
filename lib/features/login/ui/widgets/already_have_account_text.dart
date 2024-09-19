import 'package:flutter/material.dart';
import 'package:tap_doc_app/core/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already Have an Account ? ',
          style: Styles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: 'Sign Up',
          style: Styles.font13BlueSemiBold,
        )
      ]),
    );
  }
}
