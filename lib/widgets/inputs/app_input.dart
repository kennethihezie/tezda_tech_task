import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tezda_app/common/theme/scheme/input_scheme.dart';
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_text_field.dart';
import 'package:tezda_app/widgets/inputs/app_password_entry.dart';
import 'package:tezda_app/widgets/inputs/app_input_validation_state.dart';


class AppInput {
  const AppInput._();

  static Widget text({
    Key? key,
    required AppFormField formField,
    TextEditingController? controller,
    FocusNode? focusNode,
    Widget? leading,
    String? initialValue,
    String? hintText = '',
    GestureTapCallback? onClick,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    bool autocorrect = true,
    bool? enabled,
    bool showCursor = true,
    bool readOnly = false,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    TextStyle? style,
    Widget? suffix,
    BoxConstraints? suffixConstraints,
    Widget? prefix,
    BoxConstraints? prefixConstraints,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    Brightness? keyboardAppearance,
    bool validateAfterFocusLost = false,
    bool onlyShowCounterOnFocus = true,
    AppInputScheme? inputScheme,
    bool? enableInteractiveSelection,
    VoidCallback? onFocusLost,
    EditableTextContextMenuBuilder? contextMenuBuilder,
  }) {
    return AppInputField.text(
      key: key,
      formField: formField,
      controller: controller,
      focusNode: focusNode,
      leading: leading,
      initialValue: initialValue,
      hintText: hintText,
      onClick: onClick,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      autocorrect: autocorrect,
      enabled: enabled,
      showCursor: showCursor,
      readOnly: readOnly,
      maxLength: maxLength,
      maxLines: 1,
      inputFormatters: inputFormatters,
      style: style,
      suffix: suffix,
      suffixConstraints: suffixConstraints,
      prefix: prefix,
      prefixConstraints: prefixConstraints,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      keyboardAppearance: keyboardAppearance,
      validateAfterFocusLost: validateAfterFocusLost,
      onlyShowCounterOnFocus: onlyShowCounterOnFocus,
      inputScheme: inputScheme,
      enableInteractiveSelection: enableInteractiveSelection,
      onFocusLost: onFocusLost,
      contextMenuBuilder: contextMenuBuilder,
    );
  }

  static Widget textWithRemoteValidation({
    Key? key,
    required AppFormField formField,
    TextEditingController? controller,
    FocusNode? focusNode,
    String? initialValue,
    String? hintText = '',
    GestureTapCallback? onClick,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    bool autocorrect = true,
    bool? enabled,
    bool showCursor = true,
    bool readOnly = false,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    TextStyle? style,
    Widget? suffix,
    BoxConstraints? suffixConstraints,
    Widget? prefix,
    BoxConstraints? prefixConstraints,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    Brightness? keyboardAppearance,
    bool validateAfterFocusLost = false,
    bool onlyShowCounterOnFocus = true,
    bool? enableInteractiveSelection,
    VoidCallback? onFocusLost,
  }) {
    return AppInputField.textWithRemoteValidation(
      key: key,
      formField: formField,
      controller: controller,
      focusNode: focusNode,
      initialValue: initialValue,
      hintText: hintText,
      onClick: onClick,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      autocorrect: autocorrect,
      enabled: enabled,
      showCursor: showCursor,
      readOnly: readOnly,
      maxLength: maxLength,
      maxLines: 1,
      inputFormatters: inputFormatters,
      style: style,
      suffix: suffix,
      suffixConstraints: suffixConstraints,
      prefix: prefix,
      prefixConstraints: prefixConstraints,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      keyboardAppearance: keyboardAppearance,
      validateAfterFocusLost: validateAfterFocusLost,
      onlyShowCounterOnFocus: onlyShowCounterOnFocus,
      onFocusLost: onFocusLost,
      enableInteractiveSelection: enableInteractiveSelection,
    );
  }

  static Widget textArea({
    Key? key,
    required AppFormField formField,
    TextEditingController? controller,
    FocusNode? focusNode,
    String? initialValue,
    String? hintText = '',
    GestureTapCallback? onClick,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    bool autocorrect = true,
    bool? enabled,
    bool showCursor = true,
    bool readOnly = false,
    int? maxLength,
    int maxLines = 6,
    List<TextInputFormatter>? inputFormatters,
    TextStyle? style,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    Brightness? keyboardAppearance,
    bool validateAfterFocusLost = false,
    bool onlyShowCounterOnFocus = true,
    bool? enableInteractiveSelection,
    VoidCallback? onFocusLost,
    EditableTextContextMenuBuilder? contextMenuBuilder,
  }) {
    return AppInputField.text(
      key: key,
      formField: formField,
      controller: controller,
      focusNode: focusNode,
      initialValue: initialValue,
      hintText: hintText,
      onClick: onClick,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      autocorrect: autocorrect,
      enabled: enabled,
      showCursor: showCursor,
      readOnly: readOnly,
      maxLength: maxLength,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      style: style,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      keyboardAppearance: keyboardAppearance,
      validateAfterFocusLost: validateAfterFocusLost,
      onlyShowCounterOnFocus: onlyShowCounterOnFocus,
      enableInteractiveSelection: enableInteractiveSelection,
      onFocusLost: onFocusLost,
      contextMenuBuilder: contextMenuBuilder,
    );
  }

  static Widget password(
      {Key? key,
      required AppFormField formField,
      TextEditingController? controller,
      FocusNode? focusNode,
      String? hintText = 'Password',
      ValueChanged<String>? onChanged,
      GestureTapCallback? onClick,
      VoidCallback? onEditingComplete,
      ValueChanged<String>? onSubmitted,
      Widget? prefix,
      BoxConstraints? prefixConstraints,
      Icon? showIcon,
      Icon? hideIcon,
      bool? enabled,
      bool usePasswordChecker = false,
      bool retainPasswordChecker = false,
      bool autocorrect = false,
      bool obscureText = true,
      TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      int? maxLength,
      bool validateAfterFocusLost = false,
      bool showIconIndicator = false,
      VoidCallback? onFocusLost}) {
    return AppInputField.password(
        key: key,
        formField: formField,
        controller: controller,
        focusNode: focusNode,
        hintText: hintText,
        onChanged: onChanged,
        onClick: onClick,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        prefix: prefix,
        prefixConstraints: prefixConstraints,
        showIcon: showIcon,
        hideIcon: hideIcon,
        enabled: enabled,
        userPasswordChecker: usePasswordChecker,
        retainPasswordChecker: retainPasswordChecker,
        autocorrect: autocorrect,
        obscureText: obscureText,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        showIconIndicator: showIconIndicator,
        validateAfterFocusLost: validateAfterFocusLost,
        onFocusLost: onFocusLost);
  }
}

class AppInputField extends StatelessWidget {
  const AppInputField(
      {super.key,
      required this.formField,
      this.controller,
      this.focusNode,
      this.onClick,
      this.onChanged,
      this.onEditingComplete,
      this.onSubmitted,
      this.onFocusChanged,
      this.onFocusLost,
      this.onFocusGained,
      this.initialValue,
      this.leading,
      this.padding,
      this.obscureText = false,
      this.readOnly = false,
      this.enabled,
      this.autocorrect = true,
      this.showCursor = true,
      this.enableInteractiveSelection,
      this.validateAfterFocusLost = false,
      this.onlyShowCounterOnFocus = true,
      this.maxLines,
      this.maxLength,
      this.hintText,
      this.errorText,
      this.style,
      this.inputFormatters,
      this.suffix,
      this.suffixConstraints,
      this.prefix,
      this.prefixConstraints,
      this.keyboardType,
      this.textInputAction,
      this.restorationId,
      this.mouseCursor,
      this.maxLengthEnforcement,
      this.keyboardAppearance,
      this.counterStyle,
      this.contextMenuBuilder,
      this.inputScheme});

  const factory AppInputField.text({
    Key? key,
    required AppFormField formField,
    TextEditingController? controller,
    FocusNode? focusNode,
    Widget? leading,
    String? initialValue,
    String? hintText,
    GestureTapCallback? onClick,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    bool autocorrect,
    bool? enabled,
    bool showCursor,
    bool readOnly,
    int? maxLength,
    int? maxLines,
    List<TextInputFormatter>? inputFormatters,
    TextStyle? style,
    Widget? suffix,
    BoxConstraints? suffixConstraints,
    Widget? prefix,
    BoxConstraints? prefixConstraints,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    Brightness? keyboardAppearance,
    bool validateAfterFocusLost,
    bool onlyShowCounterOnFocus,
    TextStyle? counterStyle,
    bool? enableInteractiveSelection,
    VoidCallback? onFocusLost,
    AppInputScheme? inputScheme,
    EditableTextContextMenuBuilder? contextMenuBuilder,
  }) = _AppTextInputField;

  const factory AppInputField.textWithRemoteValidation({
    Key? key,
    required AppFormField formField,
    TextEditingController? controller,
    FocusNode? focusNode,
    String? initialValue,
    String? hintText,
    GestureTapCallback? onClick,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    bool autocorrect,
    bool? enabled,
    bool showCursor,
    bool readOnly,
    int? maxLength,
    int? maxLines,
    List<TextInputFormatter>? inputFormatters,
    TextStyle? style,
    Widget? suffix,
    BoxConstraints? suffixConstraints,
    Widget? prefix,
    BoxConstraints? prefixConstraints,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    Brightness? keyboardAppearance,
    bool validateAfterFocusLost,
    bool onlyShowCounterOnFocus,
    bool? enableInteractiveSelection,
    VoidCallback? onFocusLost,
  }) = _AppTextRemoteValidationInputField;

  const factory AppInputField.password(
      {Key? key,
      required AppFormField formField,
      TextEditingController? controller,
      FocusNode? focusNode,
      String? hintText,
      ValueChanged<String>? onChanged,
      GestureTapCallback? onClick,
      VoidCallback? onEditingComplete,
      ValueChanged<String>? onSubmitted,
      Widget? prefix,
      BoxConstraints? prefixConstraints,
      Icon? showIcon,
      Icon? hideIcon,
      bool? enabled,
      required bool userPasswordChecker,
      required bool retainPasswordChecker,
      bool autocorrect,
      bool obscureText,
      TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      int? maxLength,
      bool validateAfterFocusLost,
      bool showIconIndicator,
      VoidCallback? onFocusLost}) = _AppPasswordInputField;


  final TextEditingController? controller;
  final FocusNode? focusNode;
  final AppFormField formField;

  final GestureTapCallback? onClick;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onFocusChanged;
  final VoidCallback? onFocusLost;
  final VoidCallback? onFocusGained;

  final String? initialValue;

  final Widget? leading;

  final EdgeInsets? padding;

  final bool obscureText;
  final bool readOnly;
  final bool? enabled;
  final bool autocorrect;
  final bool showCursor;
  final bool? enableInteractiveSelection;

  final bool validateAfterFocusLost;
  final bool onlyShowCounterOnFocus;

  final int? maxLines;
  final int? maxLength;

  final String? hintText;
  final String? errorText;

  final TextStyle? style;

  final List<TextInputFormatter>? inputFormatters;

  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  final String? restorationId;

  final MouseCursor? mouseCursor;

  final MaxLengthEnforcement? maxLengthEnforcement;

  final Brightness? keyboardAppearance;

  final TextStyle? counterStyle;

  final EditableTextContextMenuBuilder? contextMenuBuilder;

  final AppInputScheme? inputScheme;

  Widget textField({
    TextEditingController? controller,
    FocusNode? focusNode,
    bool isPassword = false,
    bool? shouldObscure,
    bool showError = true,
    Widget? leading,
    Widget? suffix,
    VoidCallback? onClick,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return AppTextField(
      controller: controller ?? this.controller,
      focusNode: focusNode ?? this.focusNode,
      formField: formField,
      initialValue: initialValue,
      leading: leading ?? this.leading,
      padding: padding,
      maxLength: maxLength,
      maxLines: isPassword ? 1 : maxLines,
      onClick: onClick ?? this.onClick,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      obscureText: shouldObscure ?? obscureText,
      showError: showError,
      readOnly: readOnly,
      enabled: enabled,
      autocorrect: autocorrect,
      showCursor: showCursor,
      validateAfterFocusLost: validateAfterFocusLost,
      onlyShowCounterOnFocus: onlyShowCounterOnFocus,
      hintText: hintText,
      style: style,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      suffix: suffix ?? this.suffix,
      suffixConstraints: suffixConstraints,
      prefix: prefix,
      prefixConstraints: prefixConstraints,
      keyboardType: keyboardType,
      keyboardAppearance: keyboardAppearance,
      textInputAction: textInputAction,
      restorationId: restorationId,
      mouseCursor: mouseCursor,
      maxLengthEnforcement: maxLengthEnforcement,
      counterStyle: counterStyle,
      enableInteractiveSelection: enableInteractiveSelection,
      inputScheme: inputScheme,
      onFocusLost: onFocusLost,
      onFocusChanged: onFocusChanged,
      onFocusGained: onFocusGained,
      contextMenuBuilder: contextMenuBuilder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return textField();
  }
}

class _AppTextInputField extends AppInputField {
  const _AppTextInputField({
    super.key,
    required super.formField,
    super.controller,
    super.focusNode,
    super.leading,
    super.initialValue,
    super.hintText,
    super.onClick,
    super.onChanged,
    super.onEditingComplete,
    super.onSubmitted,
    super.autocorrect,
    super.enabled,
    super.showCursor,
    super.readOnly,
    super.maxLength,
    super.maxLines,
    super.inputFormatters,
    super.style,
    super.suffix,
    super.suffixConstraints,
    super.prefix,
    super.prefixConstraints,
    super.textInputAction,
    super.keyboardType,
    super.keyboardAppearance,
    super.counterStyle,
    super.validateAfterFocusLost,
    super.onlyShowCounterOnFocus = true,
    super.inputScheme,
    super.enableInteractiveSelection,
    super.onFocusLost,
    super.contextMenuBuilder,
  });
}

class _AppTextRemoteValidationInputField extends AppInputField {
  const _AppTextRemoteValidationInputField({
    super.key,
    required super.formField,
    super.controller,
    super.focusNode,
    super.initialValue,
    super.hintText,
    super.onClick,
    super.onChanged,
    super.onEditingComplete,
    super.onSubmitted,
    super.autocorrect,
    super.enabled,
    super.showCursor,
    super.readOnly,
    super.maxLength,
    super.maxLines,
    super.inputFormatters,
    super.style,
    super.suffix,
    super.suffixConstraints = const BoxConstraints(
      minWidth: 24,
      minHeight: 24,
    ),
    super.prefix,
    super.prefixConstraints,
    super.textInputAction,
    super.keyboardType,
    super.keyboardAppearance,
    super.validateAfterFocusLost,
    super.onlyShowCounterOnFocus = true,
    super.onFocusLost,
    super.enableInteractiveSelection,
  });

  @override
  Widget build(BuildContext context) {
    final suffix = ListenableBuilder(
      listenable: formField,
      builder: (context, child) {
        final value = formField.value;

        if (value is InputValidationState) {
          final suffix = value.render();
          return suffix;
        }

        return const SizedBox.shrink();
      },
    );

    return textField(
      suffix: suffix,
    );
  }
}

class _AppPasswordInputField extends AppInputField {
  const _AppPasswordInputField({
    super.key,
    required super.formField,
    super.controller,
    super.focusNode,
    super.hintText,
    super.onChanged,
    super.onClick,
    super.onEditingComplete,
    super.onSubmitted,
    super.prefix,
    super.prefixConstraints,
    super.enabled,
    this.showIcon,
    this.hideIcon,
    this.showIconIndicator,
    required this.userPasswordChecker,
    required this.retainPasswordChecker,
    super.autocorrect,
    super.obscureText,
    super.keyboardType,
    super.inputFormatters,
    super.maxLength,
    super.validateAfterFocusLost,
    super.onFocusLost,
  });

  final Icon? showIcon;
  final Icon? hideIcon;
  final bool userPasswordChecker;
  final bool retainPasswordChecker;
  final bool? showIconIndicator;

  @override
  Widget build(BuildContext context) {
    return AppPasswordEntry(
      editText: this,
      validators: formField.validators,
      controller: controller,
      showIcon: showIcon,
      hideIcon: hideIcon,
      usePasswordChecker: userPasswordChecker,
      retainPasswordChecker: retainPasswordChecker,
      showIconIndicator: showIconIndicator,
    );
  }
}



extension TextEditing on TextEditingController {
  TextEditingController withDefaultValueFromStream(
    AsyncSnapshot<String?> snapshot,
    String? defaultValue,
  ) {
    if (!snapshot.hasData) return this;
    if (snapshot.hasError) {
      value = TextEditingValue(
        text: defaultValue ?? '',
        selection: TextSelection.collapsed(offset: defaultValue?.length ?? -1),
      );
      return this;
    }
    value = TextEditingValue(
      text: snapshot.data ?? '',
      selection: TextSelection.collapsed(offset: snapshot.data?.length ?? -1),
    );
    return this;
  }
}
