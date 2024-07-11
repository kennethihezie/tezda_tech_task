import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/reset_password_payload.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/repository/reset_password_repository.dart';

class ResetPasswordUseCase extends UseCase<ResetPasswordPayload, bool> {
  final ResetPasswordRepository _repository;

  ResetPasswordUseCase({ResetPasswordRepository? repository}) : _repository = repository ?? ResetPasswordRepository.instance();

  factory ResetPasswordUseCase.instance() => GetIt.I<ResetPasswordUseCase>();

  @override
  Future<bool> invoke(ResetPasswordPayload input) {
    return _repository.resetPassword(payload: input);
  }
}