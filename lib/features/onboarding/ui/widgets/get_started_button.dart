import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_doc_app/core/router/app_router.dart';
import 'package:tap_doc_app/core/theme/colors.dart';

import '../../../../core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kLogin);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: Styles.font16WhiteMedium,
      ),
    );
  }
}
