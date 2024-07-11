import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/io/api_client.dart';
import 'package:tezda_app/common/io/api_interceptor.dart';
import 'package:tezda_app/common/io/api_routes.dart';
import 'package:tezda_app/common/navigation/app_router.dart';
import 'package:tezda_app/common/services/navigation_service.dart';
import 'package:tezda_app/common/storage/local_storage.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/data_source/reset_password_api_data_source.dart';
import 'package:tezda_app/modules/auth/forgot_password/data/repository/reset_password_repository.dart';
import 'package:tezda_app/modules/auth/forgot_password/domain/usecases/forgot_password_usecase.dart';
import 'package:tezda_app/modules/auth/forgot_password/domain/usecases/reset_password_usecase.dart';
import 'package:tezda_app/modules/auth/login/data/data_source/login_api_data_source.dart';
import 'package:tezda_app/modules/auth/login/data/repository/login_repository.dart';
import 'package:tezda_app/modules/auth/login/domain/usecases/login_usecase.dart';
import 'package:tezda_app/modules/auth/signup/data/data_source/signup_api_data_source.dart';
import 'package:tezda_app/modules/auth/signup/data/repository/signup_repository.dart';
import 'package:tezda_app/modules/auth/signup/domain/usecases/signup_usecase.dart';
import 'package:tezda_app/modules/product/data/data_source/product_api_data_source.dart';
import 'package:tezda_app/modules/product/data/repository/product_repository.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_all_product_usecase.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_categories_usecase.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_products_in_category_usecase.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_single_product_usecase.dart';


GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerSingleton<LocalStorageService>(LocalStorageService());
  ApiClient.inject(interceptors: [ AuthInterceptor() ]);

  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerSingleton<GoRouter>(router());

  final apiClient = locator<ApiClient>();

  locator.registerSingleton<SignApiDataSource>(SignApiDataSource());

  locator.registerSingleton<SignupRepository>(SignupRepository(signUpDataSource: locator.get()));

  locator.registerSingleton<SignupUseCase>(SignupUseCase(signUpRepository: locator.get()));



  locator.registerSingleton<LoginApiDataSource>(LoginApiDataSource());

  locator.registerSingleton<LoginRepository>(LoginRepository());

  locator.registerSingleton<LoginUseCase>(LoginUseCase(loginRepository: locator.get()));


  locator.registerSingleton<ResetPasswordApiDataSource>(ResetPasswordApiDataSource());

  locator.registerSingleton<ResetPasswordRepository>(ResetPasswordRepository(apiDataSource: locator.get()));

  locator.registerSingleton<ResetPasswordUseCase>(ResetPasswordUseCase(repository: locator.get()));

  locator.registerSingleton<ForgotPasswordUseCase>(ForgotPasswordUseCase(repository: locator.get()));


  locator.registerSingleton<ProductApiDataSource>(ProductApiDataSource(apiClient.dio, baseUrl: ApiRoutes.baseUrl));

  locator.registerSingleton<ProductRepository>(ProductRepository(apiDataSource: locator.get()));

  locator.registerSingleton<GetAllProductUseCase>(GetAllProductUseCase(repository: locator.get()));

  locator.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase(repository: locator.get()));

  locator.registerSingleton<GetProductInCategoryUseCase>(GetProductInCategoryUseCase(repository: locator.get()));

  locator.registerSingleton<GetProductSingleUseCase>(GetProductSingleUseCase(repository: locator.get()));

}
