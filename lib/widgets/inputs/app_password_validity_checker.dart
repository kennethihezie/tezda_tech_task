import 'package:flutter/material.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class PasswordValidityChecker extends StatefulWidget {
  const PasswordValidityChecker({
    super.key,
    required this.password,
    required this.validators,
  });

  final String password;
  final List<AppInputValidator> validators;

  @override
  State<StatefulWidget> createState() => _ValidPasswordChecker();
}

class _ValidPasswordChecker extends State<PasswordValidityChecker> {
  Widget _buildValidItem(String label) {
    return Row(
      children: [
        AppAssets.svg.check.svg(
          width: SizeConfig.radius(16),
        ),
        8.horizontalGap,
        Text(
          label,
          style: AppTextStyle.body.smallRegular, // TODO TextStyle
        ),
      ],
    );
  }

  Widget _buildInvalidItem(String label) {
    return Row(
      children: [
        AppAssets.svg.uncheck.svg(
          width: SizeConfig.radius(16),
        ),
        8.horizontalGap,
        Text(
          label,
          style: AppTextStyle.body.smallLight,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final children = widget.validators.map<Widget>(
      (validator) {
        final valid = validator.isValid(widget.password);
        return valid
            ? _buildValidItem(validator.shortHint)
            : _buildInvalidItem(validator.shortHint);
      },
    ).toList();

    return Column(
      children: [

        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 20),
          itemBuilder: (context, index) {
            return children[index];
          },
          itemCount: children.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ],
    );
  }
}
