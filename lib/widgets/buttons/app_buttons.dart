import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';

enum IconAlignment {
  left,
  right,
}

sealed class AppButton extends StatelessWidget {
  const AppButton({super.key});

  factory AppButton.primary(
          {required String title,
          required void Function() onTap,
          Color? backgroundColor,
          Color? borderColor,
          Color? textColor,
          EdgeInsets? padding,
          ValueNotifier<bool>? state,
          bool isLoading = false,
          bool isExpanded = true}) =>
      _AppButtonPrimary(
          title: title,
          onTap: onTap,
          textColor: textColor,
          backgroundColor: backgroundColor,
          padding: padding,
          state: state,
          borderColor: borderColor,
          isLoading: isLoading,
          isExpanded: isExpanded);

  factory AppButton.ghostPrimary(
          {required String title,
          Widget? icon,
          required void Function() onTap,
          ValueNotifier<bool>? state,
          Color? backgroundColor,
          Color? textColor,
          EdgeInsets? padding,
          bool isLoading = false,
          bool isExpanded = true}) =>
      _AppButtonGhostPrimary(
          title: title,
          onTap: onTap,
          icon: icon,
          state: state,
          backGroundColor: backgroundColor,
          textColor: textColor,
          padding: padding,
          isLoading: isLoading,
          isExpanded: isExpanded);

  factory AppButton.secondary(
          {required String title,
          required void Function() onTap,
          ValueNotifier<bool>? state,
          bool isLoading = false,
          EdgeInsets? padding,
          bool isExpanded = true}) =>
      _AppButtonSecondary(
          title: title,
          onTap: onTap,
          state: state,
          padding: padding,
          isLoading: isLoading,
          isExpanded: isExpanded);

  factory AppButton.ghostSecondary(
          {required String title,
          required void Function() onTap,
          ValueNotifier<bool>? state,
          EdgeInsets? padding,
          bool isLoading = false,
          bool isExpanded = true}) =>
      _AppButtonGhostSecondary(
          title: title,
          onTap: onTap,
          state: state,
          padding: padding,
          isLoading: isLoading,
          isExpanded: isExpanded);

  factory AppButton.primaryWithIcon(
          {required String title,
          required Widget icon,
          IconAlignment iconAlignment = IconAlignment.left,
          required void Function() onTap,
          ValueNotifier<bool>? state,
          EdgeInsets? padding,
          bool isLoading = false,
          bool isExpanded = true}) =>
      _$AppButton(
          title: title,
          icon: icon,
          iconAlignment: iconAlignment,
          onTap: onTap,
          state: state,
          padding: padding,
          isLoading: isLoading,
          isExpanded: isExpanded);

  factory AppButton.secondaryWithIcon(
          {required String title,
          required Widget icon,
          IconAlignment iconAlignment = IconAlignment.left,
          required void Function() onTap,
          ValueNotifier<bool>? state,
          EdgeInsets? padding,
          bool isLoading = false,
          bool isExpanded = true}) =>
      _$AppButton(
          title: title,
          onTap: onTap,
          icon: icon,
          iconAlignment: iconAlignment,
          state: state,
          padding: padding,
          isLoading: isLoading,
          isExpanded: isExpanded);

  static Widget icon({
    IconData? icon,
    Widget? iconWidget,
    double? iconSize,
    Color? color,
    double? borderRadius,
    void Function()? onTap,
  }) =>
      _AppIconButton(
        icon: icon,
        iconSize: iconSize,
        iconWidget: iconWidget,
        color: color,
        borderRadius: borderRadius,
        onTap: onTap,
      );

  static Widget listTileMenu({
    required String title,
    IconData? icon,
    String? subtitle,
    Widget? iconWidget,
    Widget? trailing,
    double? iconSize,
    Color? iconColor,
    Color? cardColor,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    bool enableBorder = false,
    bool showEndIcon = true,
    double elevaton = 0.0,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(10)),
    EdgeInsets? padding,
    void Function()? onTap,
  }) =>
      _AppListTileIconButton(
        title: title,
        icon: icon,
        text: subtitle,
        iconWidget: iconWidget,
        trailing: trailing,
        iconSize: iconSize,
        iconColor: iconColor,
        cardColor: cardColor,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        enableBorder: enableBorder,
        showEndIcon: showEndIcon,
        elevaton: elevaton,
        borderRadius: borderRadius,
        padding: padding,
        onTap: onTap,
      );
}

class _AppButtonPrimary extends StatelessWidget implements AppButton {
  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final EdgeInsets? padding;
  final ValueNotifier<bool>? state;
  final bool isLoading;
  final bool isExpanded;

  const _AppButtonPrimary(
      {required this.title,
      required this.onTap,
      this.backgroundColor,
      this.textColor,
      this.padding,
      this.borderColor,
      required this.state,
      required this.isLoading,
      this.isExpanded = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      onTap: onTap,
      textColor: textColor,
      padding: padding,
      state: state,
      borderColor: borderColor ?? AppColors.transparent,
      isLoading: isLoading,
      isExpanded: isExpanded,
      backgroundColor: backgroundColor ?? AppColors.secondGreen,
    );
  }
}

class _AppButtonGhostPrimary extends StatelessWidget implements AppButton {
  final String title;
  final void Function() onTap;
  final ValueNotifier<bool>? state;
  final bool isLoading;
  final Widget? icon;
  final bool isExpanded;
  final EdgeInsets? padding;
  final Color? backGroundColor, textColor;

  const _AppButtonGhostPrimary(
      {required this.title,
      required this.onTap,
      required this.state,
      required this.isLoading,
      this.icon,
      this.isExpanded = true,
      this.padding,
      this.textColor,
      this.backGroundColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      icon: icon,
      onTap: onTap,
      state: state,
      isLoading: isLoading,
      isExpanded: isExpanded,
      padding: padding,
      textColor: textColor ?? AppColors.textColor,
      backgroundColor: backGroundColor ?? AppColors.primary,
      isFilled: false,
    );
  }
}

class _AppButtonGhostSecondary extends StatelessWidget implements AppButton {
  final String title;
  final void Function() onTap;
  final ValueNotifier<bool>? state;
  final bool isLoading;
  final bool isExpanded;
  final EdgeInsets? padding;

  const _AppButtonGhostSecondary(
      {required this.title,
      required this.onTap,
      required this.state,
      this.padding,
      required this.isLoading,
      this.isExpanded = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      onTap: onTap,
      state: state,
      isLoading: isLoading,
      isExpanded: isExpanded,
      padding: padding,
      backgroundColor: AppColors.primary,
      isFilled: false,
    );
  }
}

class _AppButtonSecondary extends AppButton {
  final String title;
  final void Function() onTap;
  final ValueNotifier<bool>? state;
  final bool isLoading;
  final bool isExpanded;
  final EdgeInsets? padding;

  const _AppButtonSecondary(
      {required this.title,
      required this.onTap,
      required this.state,
      required this.isLoading,
      this.padding,
      this.isExpanded = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      onTap: onTap,
      state: state,
      padding: padding,
      isLoading: isLoading,
      isExpanded: isExpanded,
      backgroundColor: AppColors.primary,
      textColor: AppColors.white,
    );
  }
}

class _$AppButton extends AppButton {
  final String title;
  final void Function() onTap;
  final Widget? icon;
  final ValueNotifier<bool>? state;
  final bool isLoading;
  final IconAlignment iconAlignment;
  final Color backgroundColor;
  final Color? textColor;
  final Color borderColor;
  final EdgeInsets? padding;
  final bool isFilled;
  final bool isExpanded;

  const _$AppButton(
      {required this.title,
      required this.onTap,
      this.icon,
      this.iconAlignment = IconAlignment.left,
      this.backgroundColor = AppColors.primary,
      this.textColor,
      this.padding,
      this.borderColor = AppColors.primaryBorder,
      required this.state,
      required this.isLoading,
      this.isFilled = true,
      this.isExpanded = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    const effectivePadding = EdgeInsets.symmetric(vertical: 16, horizontal: 16);

    Widget iconLeftAlignedAndText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const SizedBox.shrink(),
          8.horizontalGap,
          Text(
            title,
            style: AppTextStyle.body.largeMedium
                .copyWith(color: textColor),
          ),
        ],
      );
    }

    Widget iconRightAlignedAndText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyle.body.largeMedium
                .copyWith(color: textColor),
          ),
          8.horizontalGap,
          icon ?? const SizedBox.shrink(),
        ],
      );
    }

    Widget ghostedButton = ValueListenableBuilder(
        valueListenable: state ?? ValueNotifier<bool>(true),
        builder: (context, state, child) {
          return OutlinedButton(
              style: OutlinedButton.styleFrom(
                  elevation: 0.0,
                  padding: padding ?? effectivePadding,
                  shadowColor: AppColors.transparent,
                  minimumSize: Size(isExpanded ? double.infinity : 0, 50),
                  disabledBackgroundColor: AppColors.white,
                  foregroundColor: textColor ?? AppColors.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  side: BorderSide(
                      color: state
                          ? backgroundColor
                          : AppColors.greyBorder,
                      width: 1)),
              onPressed: (!state || isLoading) ? null : onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    iconAlignment == IconAlignment.left
                        ? iconLeftAlignedAndText()
                        : iconRightAlignedAndText()
                  else
                    Text(
                      title,
                      style: AppTextStyle.body.largeMedium.copyWith(
                          color: state ? textColor : AppColors.textGrey,
                          height: 14.0.toLineHeight(14)),
                    )
                ],
              ));
        });

    Widget filledButton = ValueListenableBuilder(
        valueListenable: state ?? ValueNotifier<bool>(true),
        builder: (context, state, child) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                padding: padding ?? effectivePadding,
                shadowColor: AppColors.transparent,
                minimumSize: Size(isExpanded ? double.infinity : 0, 50),
                backgroundColor: backgroundColor,
                disabledBackgroundColor:
                    AppColors.grey, //backgroundColor.withOpacity(0.3),
                disabledForegroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: state ? borderColor : AppColors.greyBorder,
                        width: 2),
                    borderRadius: BorderRadius.circular(15)),
                foregroundColor: textColor ?? AppColors.white,
              ),
              onPressed: (!state || isLoading) ? null : onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    iconAlignment == IconAlignment.left
                        ? iconLeftAlignedAndText()
                        : iconRightAlignedAndText()
                  else
                    Text(
                      title,
                      style: AppTextStyle.body.largeMedium.copyWith(
                          color: state ? textColor : AppColors.textGrey,
                          height: 14.0.toLineHeight(14)),
                    )
                ],
              ));
        });

    return isFilled ? filledButton : ghostedButton;
  }
}

class _AppIconButton extends StatelessWidget {
  final IconData? icon;
  final Widget? iconWidget;
  final double? iconSize;
  final Color? color;
  final double? borderRadius;
  final void Function()? onTap;

  const _AppIconButton(
      {super.key,
      this.icon,
      this.iconWidget,
      this.iconSize,
      this.color,
      this.borderRadius,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final iconColor = color ?? AppColors.primary;
    final boxColor = iconColor.withOpacity(0.1);
    var radius = borderRadius ?? 5.0;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: SizeConfig.pxToWidth(iconSize ?? 20.0),
              height: SizeConfig.pxToHeight(iconSize ?? 20.0),
              child: icon != null
                  ? Icon(
                      icon,
                      color: iconColor,
                      size: SizeConfig.pxToHeight(iconSize ?? 20.0),
                    )
                  : iconWidget,
            )),
      ),
    );
  }
}

class _AppListTileIconButton extends StatelessWidget {
  final String title;
  final String? text;
  final IconData? icon;
  final Widget? iconWidget;
  final Widget? trailing;
  final double? iconSize;
  final Color? iconColor;
  final Color? cardColor;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final bool enableBorder;
  final bool showEndIcon;
  final double elevaton;
  final BorderRadius borderRadius;
  final EdgeInsets? padding;
  final void Function()? onTap;

  const _AppListTileIconButton({
    super.key,
    required this.title,
    this.icon,
    this.text,
    this.iconWidget,
    this.iconSize,
    this.iconColor,
    this.cardColor,
    this.titleStyle,
    this.subtitleStyle,
    this.enableBorder = false,
    this.showEndIcon = true,
    this.elevaton = 0.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.padding,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final mIconColor = iconColor ?? AppColors.grey;
    final boxColor = cardColor;
    return DecoratedBox(
      decoration: BoxDecoration(
          color: boxColor,
          borderRadius: borderRadius,
          border: Border.fromBorderSide(enableBorder
              ? BorderSide(
                  width: 1,
                  color: AppColors.grey,
                )
              : BorderSide.none),
          boxShadow: elevaton > 0
              ? [
                  BoxShadow(
                      offset: Offset(elevaton, elevaton),
                      blurRadius: elevaton * 5,
                      color: AppColors.black.withOpacity(0.4))
                ]
              : []),
      child: Material(
        elevation: 0,
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(
                    vertical: SizeConfig.pxToHeight(12),
                    horizontal: SizeConfig.pxToWidth(16)),
            child: Row(
              children: [
                icon != null
                    ? AppButton.icon(
                        icon: icon,
                        iconSize: iconSize,
                        color: iconColor,
                      )
                    : iconWidget ?? const SizedBox.shrink(),
                16.horizontalGap,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          titleStyle ?? AppTextStyle.body.largeMedium,
                    ),
                    if (text != null && text?.isEmpty == false)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          text!,
                          style:
                              subtitleStyle ?? AppTextStyle.body.small,
                        ),
                      )
                  ],
                ),
                const Spacer(),
                if (showEndIcon)
                  trailing ??
                      Icon(
                        Icons.arrow_forward_ios,
                        color: mIconColor,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
