import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/profile/presentation/provider/providers.dart';


class VerticalNavDrawer extends ConsumerWidget {
  const VerticalNavDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(profileViewModelProvider);

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        color: AppColors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.verticalGap,
                  GestureDetector(
                    onTap: () => context.push(AppPages.profileScreen),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE2E4E9)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              backgroundImage: vm.setImage(imageUrl: vm.uiState.user?.profileUrl),
                              backgroundColor: Colors.white),
                          4.horizontalGap,

                          Text(vm.uiState.user?.fullName ?? vm.uiState.user?.email ?? '', style: AppTextStyle.body.medium.copyWith(fontSize: 14))
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => vm.logout(context),
                    child: Container(
                      width: double.infinity,
                      height: 34,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 2),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: AppColors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0x3F9F9F9F)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3FE3E3E3),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppAssets.svg.logout.svg(),
                          4.horizontalGap,
                          Text('Log out', style: AppTextStyle.body.medium.copyWith(fontSize: 14)),
                          4.horizontalGap,
                        ],
                      ),
                    ),
                  ),
                 16.verticalGap
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
