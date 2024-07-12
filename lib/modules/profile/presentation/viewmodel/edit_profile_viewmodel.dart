import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/profile/domain/usecases/edit_user_usecase.dart';
import 'package:tezda_app/modules/profile/presentation/provider/providers.dart';
import 'package:tezda_app/widgets/toaster.dart';

import 'edit_profile_form.dart';

class EditProfileViewmodel extends BaseViewModel {
  final EditUserUseCase _useCase;

  EditProfileViewmodel({EditUserUseCase? useCase}) : _useCase = useCase ?? EditUserUseCase.instance();

  final form = EditProfileForm();

  File _image = File("");
  File get image => _image;
  set image(File value) {
    _image = value;
    notifyListeners();
  }

  init(User? user){
    form.emailField.value = user?.email ?? '';
    form.fullNameField.value = user?.fullName ?? '';
  }

  void editProfile(BuildContext context, WidgetRef ref) {
    NetworkBoundResource.call<User?>(method: () {
      final payload = User(email: form.emailField.getValueAsString(), fullName: form.fullNameField.getValueAsString(), profileUrl: image.path);
      return _useCase.invoke(payload);
    }, success: (data) {
      if(data != null){
        ref.read(profileViewModelProvider.notifier).getProfile();
        context.pop();
      }
    }, failure: (error) {
      ToastResp.toastMsgError(resp: "Ops failed to update profile. Please try again later");
    });
  }

  void uploadImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? result = await picker.pickImage(source: ImageSource.gallery, imageQuality: 5);

    if (result != null) {
      image = File(result.path);
    }
  }

  ImageProvider<Object>? setImage({File? image, String? imageUrl}){
    if(image?.path != ""){
      return FileImage(image!);
    } else if(imageUrl != null){
      return FileImage(File(imageUrl));
    }

    return AppAssets.png.profile.provider();
  }
}