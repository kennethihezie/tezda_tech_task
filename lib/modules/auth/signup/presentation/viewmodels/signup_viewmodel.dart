import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';
import 'package:tezda_app/modules/auth/signup/domain/usecases/signup_usecase.dart';
import 'package:tezda_app/modules/auth/signup/presentation/states/signup_ui_state.dart';
import 'package:tezda_app/modules/auth/signup/presentation/viewmodels/signup_form.dart';
import 'package:tezda_app/widgets/toaster.dart';

class SignupViewmodel extends BaseViewModel {
  final SignupUseCase _signupUseCase;

  SignupViewmodel({SignupUseCase? useCase}): _signupUseCase = useCase ?? SignupUseCase.instance();

  final form = SignUpForm();

  SignupUiState _uiState = SignupUiState();
  SignupUiState get uiState => _uiState;
  set uiState(SignupUiState value) {
    _uiState = value;
    notifyListeners();
  }


  void signUp(BuildContext context) async {
    NetworkBoundResource.call<SignupPayload?>(method: () {
      uiState = uiState.copyWith(isLoading: true);
      final payload = SignupPayload(email: form.emailField.getValueAsString(), password: form.passwordField.getValueAsString(), confirmPassword: form.confirmPasswordField.getValueAsString());
      return _signupUseCase.invoke(payload);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data);

      if(data != null){
        context.go(AppPages.productListingScreen);
      }
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
      ToastResp.toastMsgError(resp: "Ops failed to signup. Please try again later");
    });
  }
}