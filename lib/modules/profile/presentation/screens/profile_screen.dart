import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/profile/presentation/provider/providers.dart';
import 'package:tezda_app/widgets/app_bar/app_appbar.dart';
import 'package:tezda_app/widgets/buttons/app_buttons.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(profileViewModelProvider);

    return Scaffold(
      appBar: AppAppBar.primary(title: 'Profile'),
      body: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: vm.setImage(imageUrl: vm.uiState.user?.profileUrl),
                  backgroundColor: Colors.white,
                  radius: 25,
                ),
                4.horizontalGap,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vm.uiState.user?.fullName ?? 'N/A', style: AppTextStyle.body.medium.copyWith(fontSize: 12)),
                    2.verticalGap,
                    Text(vm.uiState.user?.email ?? 'N/A', style: AppTextStyle.body.medium.copyWith(fontSize: 12)),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () => context.push(AppPages.editProfileScreen, extra: vm.uiState.user),
                  child: AppAssets.svg.editProfile.svg(),
                )
              ],
            ),

            const Divider(),

            Column(
              children: [
                24.verticalGap,

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name', style: AppTextStyle.body.medium.copyWith(fontSize: 12, color: AppColors.textGrey)),

                    4.verticalGap,

                    Text(vm.uiState.user?.fullName ?? 'N/A', style: AppTextStyle.body.medium.copyWith(fontSize: 14)),

                    4.verticalGap,

                    const Divider(),
                  ],
                ),

                16.verticalGap,

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email', style: AppTextStyle.body.medium.copyWith(fontSize: 12, color: AppColors.textGrey)),

                    4.verticalGap,

                    Text(vm.uiState.user?.email ?? 'N/A', style: AppTextStyle.body.medium.copyWith(fontSize: 14)),

                    4.verticalGap,

                    const Divider(),
                  ],
                ),


                8.verticalGap,
              ],
            ),

            const Spacer(),


            AppButton.ghostPrimary(title: 'Log Out', onTap: () => vm.logout(context), backgroundColor: AppColors.red,),

            24.verticalGap,
          ],
        ),
      ),
    );
  }
}
