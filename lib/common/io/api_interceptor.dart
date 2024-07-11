import 'package:dio/dio.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/io/annotations/api_annotations.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/storage/local_storage.dart';


class AuthInterceptor extends Interceptor {
  static const authorizationKey = 'Authorization';

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final extras = options.extra;
    _addAuthorizationIfNecessary(extras, options);
    return super.onRequest(options, handler);
  }

  void _addAuthorizationIfNecessary(Map<String, dynamic> extras, RequestOptions options) {
    if (extras.containsKey(requiresAuthorizationKey) &&
        true == extras[requiresAuthorizationKey]) {
      final accessToken = locator<LocalStorageService>().getDataFromDisk(AppKeys.token);
      if (accessToken != null) {
        options.headers[authorizationKey] = 'Bearer $accessToken';
      }
    }
  }
}