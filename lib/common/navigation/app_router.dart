import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/services/navigation_service.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/screens/forgot_password_screen.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/screens/reset_password_screen.dart';
import 'package:tezda_app/modules/auth/login/presentation/screens/login_screen.dart';
import 'package:tezda_app/modules/auth/signup/presentation/screens/signup_screen.dart';
import 'package:tezda_app/modules/product/presentation/screens/product_listing_screen.dart';
import 'package:tezda_app/modules/splash/presentation/screens/splash_screen.dart';


GoRouter router() =>
    GoRouter(navigatorKey: locator<NavigationService>().navigatorKey, routes: [
      GoRoute(
          name: AppPages.splashScreen,
          path: AppPages.splashScreen,
          builder: (_, state) => const SplashScreen()),
      GoRoute(
          name: AppPages.signupScreen,
          path: AppPages.signupScreen,
          builder: (_, state) => const SignUpScreen()),
      GoRoute(
          name: AppPages.loginScreen,
          path: AppPages.loginScreen,
          builder: (_, state) => const LoginScreen()),
      GoRoute(
          name: AppPages.forgotPasswordScreen,
          path: AppPages.forgotPasswordScreen,
          builder: (_, state) => const ForgotPasswordScreen()),
      GoRoute(
          name: AppPages.resetPasswordScreen,
          path: AppPages.resetPasswordScreen,
          builder: (_, state) {
                final email = (state.extra as Map<String, dynamic>)['email'];
                final otp = (state.extra as Map<String, dynamic>)['otp'];
                return  ResetPasswordScreen(email: email, otp: otp);
          }),
      GoRoute(
          name: AppPages.productListingScreen,
          path: AppPages.productListingScreen,
          builder: (_, state) => const ProductListingScreen()),
    ]);
