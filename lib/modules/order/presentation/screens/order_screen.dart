import 'package:flutter/material.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("No Orders", style: AppTextStyle.header.largeBold.copyWith(fontSize: 20)),),
    );
  }
}
