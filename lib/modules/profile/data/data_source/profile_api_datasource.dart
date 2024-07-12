import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/storage/local_storage.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';


class ProfileApiDataSource {
  final LocalStorageService _storageService;
  ProfileApiDataSource({LocalStorageService? storageService}) : _storageService = storageService ?? locator<LocalStorageService>();

  factory ProfileApiDataSource.instance() => GetIt.I<ProfileApiDataSource>();

  Future<User?> getUser() async {
    final response = await _storageService.getDataFromDisk(AppKeys.userResponse);
    if(response != null){
      final user = User.fromJson(jsonDecode(response));
      return user;
    }

    throw AppException(message: 'User not found');
  }

  Future<User?> editUser({required User payload}) async {
    final response = await _storageService.getDataFromDisk(AppKeys.userResponse);
    if(response != null){
      final user = User.fromJson(jsonDecode(response));
      user
      ..email = payload.email ?? user.email
      ..fullName = payload.fullName ?? user.fullName
      ..profileUrl = payload.profileUrl ?? user.profileUrl;

      await _storageService.saveDataToDisk(AppKeys.userResponse, jsonEncode(user.toJson()));

      return user;
    }

    throw AppException(message: 'User not found');
  }
}