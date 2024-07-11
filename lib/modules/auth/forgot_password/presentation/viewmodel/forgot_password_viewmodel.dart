import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/forgot_password_payload.dart';
import 'package:tezda_app/modules/auth/forgot_password/domain/usecases/forgot_password_usecase.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/states/forgot_password_ui_state.dart';
import 'package:tezda_app/widgets/toaster.dart';

import 'forgot_password_form.dart';


class ForgotPasswordViewmodel extends BaseViewModel{
  ForgotPasswordViewmodel({ForgotPasswordUseCase? useCase}) : _useCase = useCase ?? ForgotPasswordUseCase.instance();

  final ForgotPasswordUseCase _useCase;

  final form = ForgotPasswordForm();

  ForgotPasswordUiState _uiState = ForgotPasswordUiState();
  ForgotPasswordUiState get uiState => _uiState;
  set uiState(ForgotPasswordUiState value) {
    _uiState = value;
    notifyListeners();
  }

  void forgotPassword(BuildContext context){
    NetworkBoundResource.call<bool>(method: () async {
      uiState = uiState.copyWith(isLoading: true);
      final payload = ForgotPasswordPayload(email: form.emailField.getValueAsString());
      return await _useCase.invoke(payload);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data);
      if(data){
        context.push(AppPages.resetPasswordScreen, extra: form.emailField.getValueAsString());
      }
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
      ToastResp.toastMsgError(resp: error.message);
    });
  }
}