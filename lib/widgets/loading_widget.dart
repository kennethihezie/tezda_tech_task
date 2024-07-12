import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tezda_app/common/keys/app_keys.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(child: Lottie.asset(AppKeys.loadingAnimation, width: 80, height: 80)),
    );
  }
}
