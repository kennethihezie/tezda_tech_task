import 'package:flutter/material.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';
import 'package:tezda_app/widgets/inputs/app_password_validity_checker.dart';

class AppPasswordEntry extends StatefulWidget {
  const AppPasswordEntry({
    super.key,
    required this.editText,
    required this.validators,
    this.hideIcon,
    this.showIcon,
    this.usePasswordChecker = true,
    this.retainPasswordChecker = false,
    this.controller,
    this.showIconIndicator,
  });

  final AppInputField editText;
  final bool usePasswordChecker;
  final bool retainPasswordChecker;
  final Icon? showIcon;
  final Icon? hideIcon;
  final bool? showIconIndicator;
  final TextEditingController? controller;
  final List<AppInputValidator> validators;

  @override
  State<StatefulWidget> createState() => _AppPasswordEntryState();
}

class _AppPasswordEntryState extends State<AppPasswordEntry> {
  final ValueNotifier<bool> displayPassword = ValueNotifier(false);
  final ValueNotifier<bool> hasFocus = ValueNotifier(false);

  Widget get visibleIcon => ValueListenableBuilder(
      valueListenable: hasFocus,
      builder: (context, focus, snapshot) {
        return AppAssets.svg.eyeOpen.svg(
            width: SizeConfig.pxToWidth(18),
            colorFilter: ColorFilter.mode(
              !focus ? AppColors.grey : AppColors.primary,
              BlendMode.srcIn,
            ));
      });

  Widget get invisibleIcon => ValueListenableBuilder(
      valueListenable: hasFocus,
      builder: (context, focus, snapshot) {
        return AppAssets.svg.eyesClosed.svg(
            width: SizeConfig.pxToWidth(18),
            colorFilter: ColorFilter.mode(
              !focus ? AppColors.grey : AppColors.primary,
              BlendMode.srcIn,
            ));
      });

  Widget _endIcon() => widget.showIconIndicator == true
      ? IconButton(
          onPressed: () {
            displayPassword.value = !displayPassword.value;
          },
          icon: (!displayPassword.value)
              ? widget.showIcon ?? visibleIcon
              : widget.hideIcon ?? invisibleIcon,
        )
      : const SizedBox.shrink();

  Widget _passwordChecker(String password) {
    return ValueListenableBuilder<bool>(
      valueListenable: hasFocus,
      child: PasswordValidityChecker(
        password: password,
        validators: widget.validators,
      ),
      builder: (context, data, child) {
        if (data) {
          return child!;
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _passwordField(bool displayPassword) {
    final formField = widget.editText.formField;
    return ListenableBuilder(
      listenable: formField,
      builder: (context, child) {
        final errorText = formField.validationError;

        if (widget.usePasswordChecker && errorText != null) {
          hasFocus.value = true;
        }

        final password = formField.getValueAsString();

        return Column(
          children: [
            widget.editText.textField(
              controller: widget.controller,
              suffix: _endIcon(),
              isPassword: true,
              showError: !widget.usePasswordChecker,
              shouldObscure: !displayPassword,
            ),
            SizedBox(height: widget.usePasswordChecker ? 8 : 0),
            if (widget.usePasswordChecker)
              Align(
                alignment: Alignment.centerLeft,
                child: _passwordChecker(password),
              )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: displayPassword,
      builder: (ctx, bool value, _) {
          return Focus(
            child: _passwordField(value),
            onFocusChange: (focus) {
              hasFocus.value = focus || widget.retainPasswordChecker;
            },
          );
      },
    );
  }

  @override
  void dispose() {
    displayPassword.dispose();
    hasFocus.dispose();
    super.dispose();
  }
}
