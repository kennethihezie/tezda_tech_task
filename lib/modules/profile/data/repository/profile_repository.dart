import 'package:get_it/get_it.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';
import 'package:tezda_app/modules/profile/data/data_source/profile_api_datasource.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';


class ProfileRepository {
  final ProfileApiDataSource _apiDataSource;

  ProfileRepository({ProfileApiDataSource? apiDataSource}) : _apiDataSource = apiDataSource ?? ProfileApiDataSource.instance();

  factory ProfileRepository.instance() => GetIt.I<ProfileRepository>();

  Future<User?> getUser() async {
    final data = await _apiDataSource.getUser();
    return data;
  }

  Future<User?> editUser({required User payload}) async {
    final data = await _apiDataSource.editUser(payload: payload);
    return data;
  }
}