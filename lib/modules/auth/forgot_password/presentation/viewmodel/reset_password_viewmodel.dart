import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/reset_password_payload.dart';
import 'package:tezda_app/modules/auth/forgot_password/domain/usecases/reset_password_usecase.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/states/reset_password_ui_state.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/viewmodel/reset_password_form.dart';
import 'package:tezda_app/widgets/toaster.dart';


class ResetPasswordViewmodel extends BaseViewModel {
  ResetPasswordViewmodel({ResetPasswordUseCase? useCase}) : _useCase = useCase ?? ResetPasswordUseCase.instance();

  final ResetPasswordUseCase _useCase;

  final form = ResetPasswordForm();

  ResetPasswordUiState _uiState = ResetPasswordUiState();
  ResetPasswordUiState get uiState => _uiState;
  set uiState(ResetPasswordUiState value) {
    _uiState = value;
    notifyListeners();
  }

  void resetPassword({required BuildContext context, required String email, required String otp}){
    NetworkBoundResource.call<bool>(method: () {
      uiState = uiState.copyWith(isLoading: true);
      final payload = ResetPasswordPayload(newPassword: form.passwordField.getValueAsString(), confirmPassword: form.confirmPasswordField.getValueAsString());
      return _useCase.invoke(payload);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data);
      if(data == true){
        context.go(AppPages.loginScreen);
        ToastResp.toastMsgSuccess(resp: "Password reset successfully");
      }
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
      ToastResp.toastMsgError(resp: error.message);
    });
  }
}