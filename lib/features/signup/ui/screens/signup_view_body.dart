import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_doc_app/core/helpers/spacing.dart';
import 'package:tap_doc_app/core/theme/styles.dart';
import 'package:tap_doc_app/core/widgets/app_text_button.dart';
import 'package:tap_doc_app/features/login/ui/widgets/terms_and_conditions_text.dart';

import '../../logic/signup_cubit.dart';
import '../widgets/already_have_account.dart';
import '../widgets/signup_bloc_listener.dart';
import '../widgets/signup_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Creat Account',
                  style: Styles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign Up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: Styles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignUpForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Create Account',
                      textStyle: Styles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignUp(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListener()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
