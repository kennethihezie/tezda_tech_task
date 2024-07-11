import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient({required this.dio}) {
    //do some configuration here
  }

  final Dio dio;

  Dio get httpClient => dio;

  factory ApiClient.getInstance() {
    return GetIt.I<ApiClient>();
  }

  static void inject({List<Interceptor> interceptors = const []}) async {
    Map<String, dynamic> headers = {};
    headers['Content-Type'] = 'application/json';

    if (!GetIt.I.isRegistered<ApiClient>()) {
      GetIt.I.registerLazySingleton(() {
        final apiClient = ApiClient(
            dio: Dio()
              ..options.headers = headers
              ..options.connectTimeout = const Duration(seconds: 120)
              ..options.receiveTimeout = const Duration(seconds: 120)
              ..options.connectTimeout = const Duration(seconds: 120)
              ..interceptors.add(PrettyDioLogger(
                  requestHeader: true,
                  requestBody: true,
                  responseBody: false,
                  responseHeader: false,
                  error: true,
                  compact: true,
                  maxWidth: 90)
        ));

        for (final element in interceptors) {
          apiClient.addInterceptor(element);
        }

        return apiClient;
      });
    }
  }


  void addInterceptor(Interceptor interceptor) {
    dio.interceptors.add(interceptor);
  }
}