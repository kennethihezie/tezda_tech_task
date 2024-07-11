import 'package:get_it/get_it.dart';
import 'package:tezda_app/modules/auth/signup/data/data_source/signup_api_data_source.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';


class SignupRepository {
  final SignApiDataSource _apiDataSource;

  SignupRepository({SignApiDataSource? signUpDataSource}) : _apiDataSource = signUpDataSource ?? SignApiDataSource.instance();

  factory SignupRepository.instance() => GetIt.I<SignupRepository>();

  Future<SignupPayload?> signUp({required SignupPayload payload}) async {
    final data = await _apiDataSource.signUp(payload: payload);
    return data;
  }
}