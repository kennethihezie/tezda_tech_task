import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/forgot_password_payload.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/repository/reset_password_repository.dart';

class ForgotPasswordUseCase extends UseCase<ForgotPasswordPayload, bool?> {
  final ResetPasswordRepository _repository;

  ForgotPasswordUseCase({ResetPasswordRepository? repository}) : _repository = repository ?? ResetPasswordRepository.instance();

  factory ForgotPasswordUseCase.instance() => GetIt.I<ForgotPasswordUseCase>();

  @override
  Future<bool> invoke(ForgotPasswordPayload input) {
    return _repository.forgotPassword(payload: input);
  }
}