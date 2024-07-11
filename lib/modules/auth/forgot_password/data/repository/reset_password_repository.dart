import 'package:get_it/get_it.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/data_source/reset_password_api_data_source.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/forgot_password_payload.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/models/reset_password_payload.dart';

class ResetPasswordRepository {
  final ResetPasswordApiDataSource _apiDataSource;

  ResetPasswordRepository({ResetPasswordApiDataSource? apiDataSource}) : _apiDataSource = apiDataSource ?? ResetPasswordApiDataSource.instance();

  factory ResetPasswordRepository.instance() => GetIt.I<ResetPasswordRepository>();

  Future<bool> forgotPassword({required ForgotPasswordPayload payload}) async {
    final data = await _apiDataSource.forgotPassword(payload: payload);
    return data;
  }


  Future<bool> resetPassword({required ResetPasswordPayload payload}) async {
    final data = await _apiDataSource.resetPassword(payload: payload);
    return data;
  }
}