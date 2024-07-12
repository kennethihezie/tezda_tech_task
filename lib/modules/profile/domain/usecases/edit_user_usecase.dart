import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/profile/data/repository/profile_repository.dart';

class EditUserUseCase extends UseCase<User, User?> {
  final ProfileRepository _repository;

  EditUserUseCase({ProfileRepository? repository}) : _repository = repository ?? ProfileRepository.instance();

  factory EditUserUseCase.instance() => GetIt.I<EditUserUseCase>();

  @override
  Future<User?> invoke(User input) async {
    return await _repository.editUser(payload: input);
  }
}