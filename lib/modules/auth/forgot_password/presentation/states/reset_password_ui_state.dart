import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_ui_state.freezed.dart';

@freezed
class ResetPasswordUiState with _$ResetPasswordUiState {
  factory ResetPasswordUiState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(null) AppException? exception,
    @Default(false) bool data,
  }) = _ResetPasswordUiState;
}