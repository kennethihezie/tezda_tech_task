import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/login/data/models/login_payload.dart';
import 'package:tezda_app/modules/auth/login/domain/usecases/login_usecase.dart';
import 'package:tezda_app/modules/auth/login/presentation/states/login_ui_state.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';
import 'package:tezda_app/widgets/toaster.dart';

import 'login_form.dart';


class LoginViewmodel extends BaseViewModel {
  final LoginUseCase _loginUseCase;

  LoginViewmodel({LoginUseCase? useCase}) : _loginUseCase = useCase ?? LoginUseCase.instance();

  final form = LoginForm();

  LoginUiState _uiState = LoginUiState();
  LoginUiState get uiState => _uiState;
  set uiState(LoginUiState value) {
    _uiState = value;
    notifyListeners();
  }



  void login(BuildContext context) async {
    NetworkBoundResource.call<SignupPayload?>(method: () {
      uiState = uiState.copyWith(isLoading: true);
      final payload = LoginPayload(email: form.emailField.getValueAsString(), password: form.passwordField.getValueAsString(), keepMeLoggedIn: form.keepMeLoggedIn);
      return _loginUseCase.invoke(payload);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data);
      context.push(AppPages.productListingScreen);
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
      ToastResp.toastMsgError(resp: error.message);
    });
  }
}