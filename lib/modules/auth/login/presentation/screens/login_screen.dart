import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/auth/login/presentation/providers/login_provider.dart';
import 'package:tezda_app/widgets/cards/app_cards.dart';
import 'package:tezda_app/widgets/inputs/app_check_box.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';
import 'package:tezda_app/widgets/page/auto_page.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(loginViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: AutoPage(
              title: 'Sign In',
              subTitle: 'Hey there, welcome back!',
              buttonText: 'Sign In',
              state: vm.form.validState,
              isLoading: vm.uiState.isLoading,
              callBack: () => vm.login(context),
              bottom: const _BottomSection(),
              child: Column(
                children: [
                  AppCards.withTitle(
                      title: 'Email Address',
                      child: AppInput.text(
                          hintText: '',
                          formField: vm.form.emailField)),
                  16.verticalGap,
                  AppCards.withTitle(
                      title: 'Password',
                      child: AppInput.password(
                        hintText: '',
                          showIconIndicator: true,
                          formField: vm.form.passwordField)),

                  16.verticalGap,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppCheckbox(isCheckedState: (value) => vm.form.setKeepMeLoggedIn(value),),

                          4.horizontalGap,

                          Text('Keep me logged in',
                              style: AppTextStyle.body.largeRegular.copyWith(
                                  fontWeight: FontWeight.w500, height: 20.0.toLineHeight(13), fontSize: 13)),

                        ],
                      ),

                      GestureDetector(
                        onTap: () => context.push(AppPages.forgotPasswordScreen),
                        child: Text('Forgot Password',
                            style: AppTextStyle.body.largeRegular.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w500, height: 20.0.toLineHeight(13), fontSize: 13))
                      )
                    ],
                  )
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
