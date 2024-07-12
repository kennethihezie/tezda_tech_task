import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/profile/data/repository/profile_repository.dart';

class GetUserUseCase extends UseCase<void, User?> {
  final ProfileRepository _repository;

  GetUserUseCase({ProfileRepository? repository}) : _repository = repository ?? ProfileRepository.instance();

  factory GetUserUseCase.instance() => GetIt.I<GetUserUseCase>();

  @override
  Future<User?> invoke([void input]) async {
    return await _repository.getUser();
  }
}