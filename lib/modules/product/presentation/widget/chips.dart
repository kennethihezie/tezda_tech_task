import 'package:flutter/material.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key, required this.text, this.isActive, this.callBack, required this.index});
  final String text;
  final int index;
  final bool? isActive;
  final Function(String, int)? callBack;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: GestureDetector(
        onTap: isActive == true ? null : () => callBack?.call(text, index),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
              color: isActive == true ? const Color(0xFF2F3037) : const Color(0xFFFAFAFB),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColors.greyBorder),
              boxShadow: [
                BoxShadow(
                    color: isActive == true ? AppColors.transparent.withOpacity(0.20) : const Color(0xFF2F3037).withOpacity(0.10),
                    offset: Offset(0, isActive == true ? 2 : 1),
                    blurRadius: isActive == true ? 13 : 0
                )
              ]
          ),
          child: Text(text, style: AppTextStyle.body.smallMedium.copyWith(fontSize: 14, color: isActive == true ? AppColors.white : AppColors.black)),
        ),
      ),
    );
  }
}
