import 'package:flutter/cupertino.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';

class AppErrorWidget extends StatelessWidget {
  final String text;
  final String? description;
  final Function? retry;
  const AppErrorWidget({super.key, required this.text, this.description, this.retry});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppAssets.png.emptyState.image(),

            Text(text, textAlign: TextAlign.center, style: AppTextStyle.body.medium.copyWith(fontSize: 14)),

            16.verticalGap,

            GestureDetector(
              onTap: () => retry?.call(),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                        color: AppColors.shadowColor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(8)),
                child: Text('Try Again', textAlign: TextAlign.center, style: AppTextStyle.body.medium.copyWith(fontSize: 14)),
              ),
            )

          ],
        ),
      ),
    );
  }
}
