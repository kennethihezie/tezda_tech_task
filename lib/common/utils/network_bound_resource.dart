import 'package:dio/dio.dart';

class NetworkBoundResource {
  static call<T>({required Function method, required Function(T) success, Function(AppException)? failure}) async {
    try {
      final response = await method.call() as T;
      success.call(response);
    } on DioException catch (error) {
      if (DioExceptionType.connectionTimeout == error.type ||
          DioExceptionType.receiveTimeout == error.type ||
          DioExceptionType.sendTimeout == error.type) {

        final exception = AppException(
            message: 'Connection Unavailable',
            description: "We're sorry, but it seems that we are currently "
                'experiencing connection issues. '
                'Please check your internet connection and try again. Thank you');

        failure?.call(exception);
      } else if (error.response == null || error.response?.statusCode == 500) {

        final exception =  AppException(
            message: 'Oops! Something Went Wrong',
            description:
            'We encountered a problem while processing your request. '
                'We’re on it and will have it fixed soon. Please try again later.');

        failure?.call(exception);
      } else if (error.response?.statusCode == 500 ||
          error.response?.statusCode == 501 ||
          error.response?.statusCode == 429) {

        final exception = AppException(
            message: 'Oops! Something Went Wrong',
            description:
            'We encountered a problem while processing your request. '
                'We’re on it and will have it fixed soon. Please try again later.');

        failure?.call(exception);
      } else if (error.response?.statusCode == 401 || error.response?.statusCode == 403) {
        failure?.call(AppException(message: error.response?.data['message'] ?? ''));
      } else {
        failure?.call(AppException(message: error.response?.data['message'] ?? ''));
      }
    } on AppException catch(error) {
      failure?.call(AppException(message: error.message, description: error.description));
    }
  }
}

class AppException implements Exception {
  final String? message, description;

  AppException({this.message, this.description});
}