import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_doc_app/core/router/app_router.dart';
import 'package:tap_doc_app/core/theme/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t Have an Account ? ',
          style: Styles.font13DarkBlueRegular,
        ),
        TextSpan(
            text: 'Sign Up',
            style: Styles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                GoRouter.of(context).push(AppRouter.kSignUp);
              }),
      ]),
    );
  }
}
