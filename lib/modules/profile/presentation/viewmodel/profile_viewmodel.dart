import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/profile/domain/usecases/get_user_usecase.dart';
import 'package:tezda_app/modules/profile/presentation/states/profile_ui_state.dart';
import 'package:tezda_app/widgets/toaster.dart';

class ProfileViewmodel extends BaseViewModel {
  final GetUserUseCase _useCase;
  ProfileViewmodel({GetUserUseCase? useCase}) : _useCase = useCase ?? GetUserUseCase.instance(){
    _init();
  }

  ProfileUiState _uiState = ProfileUiState();
  ProfileUiState get uiState => _uiState;
  set uiState(ProfileUiState value) {
    _uiState = value;
    notifyListeners();
  }

  _init(){
    getProfile();
  }

  void getProfile() {
    NetworkBoundResource.call<User?>(method: () => _useCase.invoke(),
        success: (data) {
      if(data != null){
        uiState = uiState.copyWith(user: data);
      }
    }, failure: (error) {
      ToastResp.toastMsgError(resp: "Ops failed to get profile. Please try again later");
    });
  }


  ImageProvider<Object>? setImage({String? imageUrl}) {
    if (imageUrl != null) {
      return FileImage(File(imageUrl));
    }

    return AppAssets.png.profile.provider();
  }

  void logout(BuildContext context){
    storage.clearAllDataFromDisk();
    context.go(AppPages.signupScreen);
  }
}