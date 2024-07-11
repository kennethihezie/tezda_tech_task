import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/storage/local_storage.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/forgot_password_payload.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/reset_password_payload.dart';
import 'package:tezda_app/modules/auth/signup/data/models/signup_payload.dart';


class ResetPasswordApiDataSource {
  final LocalStorageService _storageService;

  ResetPasswordApiDataSource({LocalStorageService? storageService}) : _storageService = storageService ?? locator<LocalStorageService>();

  factory ResetPasswordApiDataSource.instance() => GetIt.I<ResetPasswordApiDataSource>();

  Future<bool> forgotPassword({required ForgotPasswordPayload payload}) async {
    final response = await _storageService.getDataFromDisk(AppKeys.userResponse);
    if(response != null){
      final data = SignupPayload.fromJson(jsonDecode(response));
      return data.email == payload.email;
    }

    throw AppException(message: 'User not found');
  }


  Future<bool> resetPassword({required ResetPasswordPayload payload}) async {
    final response = await _storageService.getDataFromDisk(AppKeys.userResponse);
    if(response != null){
      final data = SignupPayload.fromJson(jsonDecode(response));
      data
      ..password = payload.newPassword
      ..confirmPassword = payload.confirmPassword;

      await _storageService.saveDataToDisk(AppKeys.userResponse, jsonEncode(data.toJson()));

      return true;
    }

    throw AppException(message: 'User not found');
  }

}