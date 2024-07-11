import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_ui_state.freezed.dart';

@freezed
class SignupUiState with _$SignupUiState {
  factory SignupUiState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(null) AppException? exception,
    @Default(null) SignupPayload? data,
  }) = _SignupUiState;
}