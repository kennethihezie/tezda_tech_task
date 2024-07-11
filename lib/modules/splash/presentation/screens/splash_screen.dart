import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/storage/local_storage.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/splash/presentation/providers/provider.dart';


class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () => ref.read(splashScreenViewModelProvider).checkLoginStatus(context: context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primary,
        child: Center(child: Text('Tezda', style: AppTextStyle.header.extraLargeBold.copyWith(fontSize: 24, color: AppColors.white))),
      ),
    );
  }
}
