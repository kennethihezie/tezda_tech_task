import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/providers/providers.dart';
import 'package:tezda_app/widgets/cards/app_cards.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';
import 'package:tezda_app/widgets/page/auto_page.dart';


class ForgotPasswordScreen extends ConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(forgotPasswordViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: AutoPage(
              title: 'Reset Password',
              subTitle: 'Enter your registered email so we verify you.',
              buttonText: 'Continue',
              callBack: () => vm.forgotPassword(context),
              state: vm.form.validState,
              isLoading: vm.uiState.isLoading,
              bottom: const _BottomSection(),
              child: Column(
                children: [
                  AppCards.withTitle(
                      title: 'Email Address',
                      child: AppInput.text(formField: vm.form.emailField)),
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
              text: "Don't have an account? ",
              style: AppTextStyle.body.small.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textLightGrey)),
          TextSpan(
              text: "Register",
              recognizer: TapGestureRecognizer()
                ..onTap = () => context.pushReplacement(AppPages.signupScreen),
              style: AppTextStyle.body.small.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary))
        ]));
  }
}
