import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';
import 'package:tezda_app/modules/auth/signup/data/repository/signup_repository.dart';

class SignupUseCase extends UseCase<SignupPayload, SignupPayload?> {
  final SignupRepository _repository;

  SignupUseCase({SignupRepository? signUpRepository}) : _repository = signUpRepository ?? SignupRepository.instance();

  factory SignupUseCase.instance() => GetIt.I<SignupUseCase>();

  @override
  Future<SignupPayload?> invoke(SignupPayload input) async {
    return await _repository.signUp(payload: input);
  }
}