import 'package:flutter/material.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';

class _CardWithTitle extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final String? title;
  final String? optionalText;
  final TextStyle? titleStyle;
  final TextStyle? optionalTextStyle;
  final double borderRadius;

  const _CardWithTitle({
    super.key,
    this.child,
    this.color,
    this.title,
    this.optionalText,
    this.titleStyle,
    this.optionalTextStyle,
    this.borderRadius = 4
  });

  @override
  Widget build(BuildContext context) {
    // final colorProvider = ColorProvider.of(context);
    final container = _AppContainer.elevation0(
      key: key,
      borderRadius: borderRadius,
      color: color,
      child: child,
    );

    return Column(
      key: key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(title != null || optionalText != null) Row(
          children: [
            Text(
              title ?? "",
              style: titleStyle ?? AppTextStyle.body.largeMedium
                  .copyWith(color: AppColors.cardTitleColor),
            ),
            4.horizontalGap,
            Text(
              optionalText ?? "",
              style: optionalTextStyle ?? AppTextStyle.body.small
                  .copyWith(color: AppColors.cardTitleColor),
            ),
          ],
        ),
        if(title != null ) const SizedBox(
          height: 8,
        ),
        container
      ],
    );
  }
}

class AppCards {
  const AppCards._();

  static Widget withTitle({
    Key? key,
    Widget? child,
    Color? color,
    String? title,
    String? optionalText,
    TextStyle? titleStyle,
    TextStyle? optionalTextStyle,
    double borderRadius = 4,
  }) {
    return _CardWithTitle(
      key: key,
      color: color,
      title:  title,
      optionalText: optionalText,
      titleStyle: titleStyle,
      optionalTextStyle: optionalTextStyle,
      borderRadius: borderRadius,
      child: child,
    );
  }

  static Widget withTitleAndAction({
    Key? key,
    Widget? child,
    Color? color,
    required String title,
    required Widget action,
    double borderRadius = 4,
    double gapSize = 8,
    TextStyle? titleStyle,
  }) {
    final container = _AppContainer.elevation0(
      key: key,
      borderRadius: borderRadius,
      child: child,
    );
    return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style:titleStyle ?? AppTextStyle.body.smallLight
                        .copyWith(color: AppColors.cardColor),
                  ),
                  action
                ]),
            gapSize.verticalGap,
            container
          ],
        );
      }
    );
  }

  static Widget elevation0(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius = 4,
        Border? border}) {
    return _AppContainer.elevation0(
      key: key,
      borderRadius: borderRadius,
      color: color,
      border: border,
      child: child,
    );
  }

  static Widget elevation1(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius = 4,
        Border? border}) {
    return _AppContainer.elevation1(
      key: key,
      borderRadius: borderRadius,
      color: color,
      border: border,
      child: child,
    );
  }

  static Widget elevation2(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius = 4,
        Border? border}) {
    return _AppContainer.elevation2(
      key: key,
      borderRadius: borderRadius,
      color: color,
      border: border,
      child: child,
    );
  }

  static Widget elevation3(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius = 4,
        Border? border}) {
    return _AppContainer.elevation3(
      key: key,
      borderRadius: borderRadius,
      color: color,
      border: border,
      child: child,
    );
  }

  static Widget elevation4(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius = 4,
        Border? border}) {
    return _AppContainer.elevation4(
      key: key,
      borderRadius: borderRadius,
      color: color,
      border: border,
      child: child,
    );
  }

  static Widget fab({
    Key? key,
    Widget? child,
    Color? color,
    double borderRadius = 4,
    Border? border,
    bool elevated = true,
  }) {
    return _AppContainer.fab(
      key: key,
      color: color,
      elevated: elevated,
      border: border,
      child: child,
    );
  }
}

class _AppContainer extends StatelessWidget {
  const _AppContainer(
      {super.key, this.child, this.color, this.borderRadius = 4, this.border});

  const factory _AppContainer.elevation0(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius,
        Border? border}) = _Elevation0;

  const factory _AppContainer.elevation1(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius,
        Border? border}) = _Elevation1;

  const factory _AppContainer.elevation2(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius,
        Border? border}) = _Elevation2;

  const factory _AppContainer.elevation3(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius,
        Border? border}) = _Elevation3;

  const factory _AppContainer.elevation4(
      {Key? key,
        Widget? child,
        Color? color,
        double borderRadius,
        Border? border}) = _Elevation4;

  const factory _AppContainer.fab({
    Key? key,
    Color? color,
    Widget? child,
    Border? border,
    bool elevated,
  }) = _Fab;

  final Widget? child;
  final Color? color;
  final double borderRadius;
  final Border? border;

  BoxShape get shape => BoxShape.rectangle;

  Widget buildContainer({
    required BuildContext context,
    Color? color,
    List<BoxShadow> boxShadow = const [],
  }) {
    // final colorProvider = ColorProvider.of(context);
    final backgroundColor = this.color ?? color ?? AppColors.backgroundDefault;

    final radius = shape == BoxShape.circle
        ? null
        : BorderRadius.circular(SizeConfig.radius(borderRadius));

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: radius,
          shape: shape,
          boxShadow: boxShadow,
          border: border),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: radius,
        clipBehavior: Clip.antiAlias,
        shape: shape == BoxShape.circle ? const CircleBorder() : null,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildContainer(context: context);
  }
}

class _Elevation0 extends _AppContainer {
  const _Elevation0(
      {super.key, super.child, super.color, super.borderRadius, super.border});
}

class _Elevation1 extends _AppContainer {
  const _Elevation1(
      {super.key, super.child, super.color, super.borderRadius, super.border});

  @override
  Widget buildContainer({
    required BuildContext context,
    Color? color,
    List<BoxShadow> boxShadow = const [],
  }) {
    // final cardScheme = ColorProvider.of(context).cardScheme;
    // final boxShadow = <BoxShadow>[
    //   BoxShadow(
    //     color: cardScheme.elevation1Color,
    //     offset: const Offset(0, 1),
    //     blurRadius: 2,
    //   ),
    // ];
    return super.buildContainer(
      context: context,
      color: color,
      // boxShadow: boxShadow,
    );
  }
}

class _Elevation2 extends _AppContainer {
  const _Elevation2(
      {super.key, super.child, super.color, super.borderRadius, super.border});

  @override
  Widget buildContainer({
    required BuildContext context,
    Color? color,
    List<BoxShadow> boxShadow = const [],
  }) {
    // final cardScheme = ColorProvider.of(context).cardScheme;
    // final boxShadow = <BoxShadow>[
    //   BoxShadow(
    //     color: cardScheme.elevation2Color,
    //     offset: const Offset(0, 3),
    //     blurRadius: 3,
    //   ),
    // ];
    return super.buildContainer(
      context: context,
      color: color,
      // boxShadow: boxShadow,
    );
  }
}

class _Elevation3 extends _AppContainer {
  const _Elevation3(
      {super.key, super.child, super.color, super.borderRadius, super.border});

  @override
  Widget buildContainer({
    required BuildContext context,
    Color? color,
    List<BoxShadow> boxShadow = const [],
  }) {
    // final cardScheme = ColorProvider.of(context).cardScheme;
    // final boxShadow = <BoxShadow>[
    //   BoxShadow(
    //     color: cardScheme.elevation3Color,
    //     offset: const Offset(0, 4),
    //     blurRadius: 4,
    //   ),
    // ];
    return super.buildContainer(
      context: context,
      color: color,
      // boxShadow: boxShadow,
    );
  }
}

class _Elevation4 extends _AppContainer {
  const _Elevation4(
      {super.key, super.child, super.color, super.borderRadius, super.border});

  @override
  Widget buildContainer({
    required BuildContext context,
    Color? color,
    List<BoxShadow> boxShadow = const [],
  }) {
    // final cardScheme = ColorProvider.of(context).cardScheme;
    // final boxShadow = <BoxShadow>[
    //   BoxShadow(
    //     color: cardScheme.elevation4Color,
    //     offset: const Offset(0, 15),
    //     blurRadius: 17,
    //   ),
    // ];
    return super.buildContainer(
      context: context,
      color: color,
      // boxShadow: boxShadow,
    );
  }
}

class _Fab extends _AppContainer {
  const _Fab({
    super.key,
    super.child,
    super.color,
    super.border,
    this.elevated = true,
  });

  final bool elevated;

  @override
  BoxShape get shape => BoxShape.circle;

  @override
  Widget buildContainer({
    required BuildContext context,
    Color? color,
    List<BoxShadow> boxShadow = const [],
  }) {
    // final cardScheme = ColorProvider.of(context).cardScheme;
    // final boxShadow = <BoxShadow>[
    //   BoxShadow(
    //     color: cardScheme.fabColor.color1,
    //     offset: const Offset(0, 0.89),
    //     blurRadius: 3.47,
    //   ),
    //   BoxShadow(
    //     color: cardScheme.fabColor.color2,
    //     offset: const Offset(0, 4.05),
    //     blurRadius: 9.75,
    //   ),
    //   BoxShadow(
    //     color: cardScheme.fabColor.color3,
    //     offset: const Offset(0, 10.25),
    //     blurRadius: 26.16,
    //   ),
    //   BoxShadow(
    //     color: cardScheme.fabColor.color4,
    //     offset: const Offset(0, 20),
    //     blurRadius: 60,
    //   ),
    // ];
    return super.buildContainer(
      context: context,
      color: color,
      // boxShadow: elevated ? boxShadow : [],
    );
  }
}
