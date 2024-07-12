import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/profile/presentation/provider/providers.dart';
import 'package:tezda_app/widgets/app_bar/app_appbar.dart';
import 'package:tezda_app/widgets/buttons/app_buttons.dart';
import 'package:tezda_app/widgets/cards/app_cards.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key, required this.user});
  final User user;

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () => ref.read(editProfileViewModelProvider.notifier).init(widget.user));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(editProfileViewModelProvider);

    return Scaffold(
      appBar: AppAppBar.primary(title: 'Edit Profile'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 96,
              width: 96,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(backgroundImage: vm.setImage(image: vm.image, imageUrl: widget.user.profileUrl), backgroundColor: Colors.white),

                  Positioned(
                      bottom: -10,
                      right: 12,
                      child:  InkWell(
                        onTap: () => vm.uploadImage(),
                        child: AppAssets.svg.editProfileImg.svg(),
                      )),
                ],
              ),
            ),
            20.verticalGap,
            AppCards.withTitle(
                title: 'Full Name',
                child: AppInput.text(
                    formField: vm.form.fullNameField)),
            16.verticalGap,
            AppCards.withTitle(
                title: 'Email',
                child: AppInput.text(
                    formField: vm.form.emailField)),

            const Spacer(),

            AppButton.primary(title: 'Save', onTap: () => vm.editProfile(context, ref)),

            8.verticalGap,

            AppButton.ghostPrimary(title: 'Back', onTap: () => context.pop()),

            20.verticalGap
          ],
        ),
      ),
    );
  }
}