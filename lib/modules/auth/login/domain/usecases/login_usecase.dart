import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/auth/login/data/models/login_payload.dart';
import 'package:tezda_app/modules/auth/login/data/repository/login_repository.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';

class LoginUseCase extends UseCase<LoginPayload, SignupPayload?> {
  final LoginRepository _repository;

  LoginUseCase({LoginRepository? loginRepository}) : _repository = loginRepository ?? LoginRepository.instance();

  factory LoginUseCase.instance() => GetIt.I<LoginUseCase>();

  @override
  Future<SignupPayload?> invoke(LoginPayload input) {
    return _repository.login(payload: input);
  }
}