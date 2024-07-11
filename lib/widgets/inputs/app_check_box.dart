import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';


class AppCheckbox extends StatefulWidget {
  final Function(bool)? isCheckedState;
  final bool isOrdinary;
  const AppCheckbox(
      {super.key,
        this.isCheckedState,
        this.isOrdinary = false,});

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });

        widget.isCheckedState?.call(isChecked);
      },
      child: isChecked ? AppAssets.svg.checkboxCheck.svg() : Container(
        width: 17,
        height: 17,
        decoration: BoxDecoration(
            color: AppColors.greyBorder,
            border: Border.all(width: 0.7, color: AppColors.greyBorder),
            borderRadius: BorderRadius.circular(4)
        ),

        child: Container(
          margin: const EdgeInsets.all(1),
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
        ),
      )
    );
  }
}
