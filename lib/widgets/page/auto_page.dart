import 'package:flutter/material.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/widgets/buttons/app_buttons.dart';

class AutoPage extends StatelessWidget {
  const AutoPage({super.key, required this.title, required this.subTitle, required this.child, required this.buttonText, required this.callBack, this.bottom, this.state, this.isLoading = false});
  final String title, subTitle, buttonText;
  final Widget child;
  final Widget? bottom;
  final ValueNotifier<bool>? state;
  final bool isLoading;
  final void Function() callBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          24.verticalGap,

          Text(title, style: AppTextStyle.header.largeSemiBold.copyWith(height: 28.0.toLineHeight(20))),

          8.verticalGap,

          Text(subTitle,
              textAlign: TextAlign.center,
              style: AppTextStyle.body.largeRegular.copyWith(
                  color: AppColors.textLightGrey,
                  height: 22.0.toLineHeight(14))),

          32.verticalGap,

          child,

          const Spacer(),


          isLoading ? AppButton.primaryWithIcon(
            title: 'Submitting...',
            icon: const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: AppColors.white,
                strokeWidth: 2,
              ),
            ),
            state: ValueNotifier(false),
            onTap: () {},
          ) : AppButton.primary(title: buttonText, onTap: callBack, state: state, isLoading: isLoading),

          24.verticalGap,

          bottom ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}
