import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_doc_app/core/router/app_router.dart';
import 'package:tap_doc_app/core/theme/styles.dart';
import 'package:tap_doc_app/features/login/logic/login_cubit.dart';
import 'package:tap_doc_app/features/login/logic/login_state.dart';

import '../../../../core/theme/colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          }, success: (loginResponse) {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(AppRouter.kHome);
          }, error: (error) {
            GoRouter.of(context).pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  error,
                  style: Styles.font15DarkBlueMedium,
                ),
                actions: [
                  TextButton(
                    onPressed: () => GoRouter.of(context).pop(),
                    child: Text(
                      'Got It',
                      style: Styles.font14BlueSemiBold,
                    ),
                  ),
                ],
              ),
            );
          });
        },
        child: const SizedBox.shrink());
  }
}
