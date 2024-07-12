import 'package:flutter/material.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("No Transactions", style: AppTextStyle.header.largeBold.copyWith(fontSize: 20)),),
    );
  }
}
