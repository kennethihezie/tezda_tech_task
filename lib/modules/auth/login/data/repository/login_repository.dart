import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:tezda_app/modules/auth/login/data/data_source/login_api_data_source.dart';
import 'package:tezda_app/modules/auth/login/data/models/login_payload.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';

class LoginRepository {
  final LoginApiDataSource _apiDataSource;

  LoginRepository({LoginApiDataSource? signUpDataSource}) : _apiDataSource = signUpDataSource ?? LoginApiDataSource.instance();

  factory LoginRepository.instance() => GetIt.I<LoginRepository>();

  Future<SignupPayload?> login({required LoginPayload payload}) async {
    final data = await _apiDataSource.login(payload: payload);
    return data;
  }
}