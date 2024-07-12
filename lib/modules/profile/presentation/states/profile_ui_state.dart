import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
part 'profile_ui_state.freezed.dart';

@freezed
class ProfileUiState with _$ProfileUiState {
  factory ProfileUiState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(null) AppException? exception,
    @Default(null) User? user,
  }) = _ProfileUiState;
}