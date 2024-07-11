import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/auth/signup/presentation/providers/signup_providers.dart';
import 'package:tezda_app/widgets/cards/app_cards.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';
import 'package:tezda_app/widgets/page/auto_page.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(signUpViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: AutoPage(
              title: 'Sign Up',
              subTitle: 'Let’s experience the joy of Tezda.',
              buttonText: 'Register',
              callBack: () => vm.signUp(context),
              state: vm.form.validState,
              isLoading: vm.uiState.isLoading,
              bottom: const _BottomSection(),
              child: Column(
                children: [
                  AppCards.withTitle(
                      title: 'Email Address',
                      child: AppInput.text(
                          formField: vm.form.emailField)),
                  16.verticalGap,
                  AppCards.withTitle(
                      title: 'Password',
                      child: AppInput.password(
                          hintText: '',
                          showIconIndicator: true,
                          usePasswordChecker: true,
                          formField: vm.form.passwordField)),
                  16.verticalGap,
                  AppCards.withTitle(
                      title: 'Confirm Password',
                      child: AppInput.password(
                          hintText: '',
                          showIconIndicator: true,
                          formField: vm.form.confirmPasswordField)),
                ],
              ))),
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection();

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "Already have an account? ",
          style: AppTextStyle.body.small.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textLightGrey)),
      TextSpan(
          text: "Login",
          recognizer: TapGestureRecognizer()
            ..onTap = () => context.pushReplacement(AppPages.loginScreen),
          style: AppTextStyle.body.small.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primary))
    ]));
  }
}
