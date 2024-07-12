import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/storage/local_storage.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/login/data/models/login_payload.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';


class LoginApiDataSource {
  final LocalStorageService _storageService;
  LoginApiDataSource({LocalStorageService? storageService}) : _storageService = storageService ?? locator<LocalStorageService>();

  factory LoginApiDataSource.instance() => GetIt.I<LoginApiDataSource>();

  Future<SignupPayload?> login({required LoginPayload payload}) async {
    final response = await _storageService.getDataFromDisk(AppKeys.authResponse);
    if(response != null){
      final data = SignupPayload.fromJson(jsonDecode(response));
      if(data.email == payload.email && data.password == payload.password){
        await _storageService.saveDataToDisk(AppKeys.keepMeLoggedIn, payload.keepMeLoggedIn);
        return data;
      }
    }

    throw AppException(message: 'Incorrect username or password');
  }
}