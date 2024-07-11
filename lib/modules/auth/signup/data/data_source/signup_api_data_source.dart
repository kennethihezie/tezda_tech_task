
import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/storage/local_storage.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';

class SignApiDataSource {
  final LocalStorageService _storageService;
  SignApiDataSource({LocalStorageService? storageService}) : _storageService = storageService ?? locator<LocalStorageService>();

  factory SignApiDataSource.instance() => GetIt.I<SignApiDataSource>();

  Future<SignupPayload> signUp({required SignupPayload payload}) async {
    await _storageService.saveDataToDisk(AppKeys.userResponse, jsonEncode(payload.toJson()));
    return payload;
  }
}