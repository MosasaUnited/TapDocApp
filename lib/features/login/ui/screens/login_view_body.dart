import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_doc_app/core/helpers/spacing.dart';
import 'package:tap_doc_app/core/widgets/app_text_button.dart';
import 'package:tap_doc_app/features/login/data/models/login_request_body.dart';
import 'package:tap_doc_app/features/login/logic/login_cubit.dart';
import 'package:tap_doc_app/features/login/ui/widgets/already_have_account_text.dart';

import '../../../../core/theme/styles.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/terms_and_conditions_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: Styles.font24BlueBold,
                ),
                verticalSpace(8),
                // TODO: Add Text That Exist on Figma Design
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to!',
                  style: Styles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forget Password ?',
                        style: Styles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: Styles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates(
          LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ),
        );
  }
}
