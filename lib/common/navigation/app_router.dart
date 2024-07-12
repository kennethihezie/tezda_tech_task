import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/services/navigation_service.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/screens/forgot_password_screen.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/screens/reset_password_screen.dart';
import 'package:tezda_app/modules/auth/login/presentation/screens/login_screen.dart';
import 'package:tezda_app/modules/profile/data/models/user.dart';
import 'package:tezda_app/modules/auth/signup/presentation/screens/signup_screen.dart';
import 'package:tezda_app/modules/dashboard/presentation/widget/bottom_navbar.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/presentation/screens/product_details_screen.dart';
import 'package:tezda_app/modules/product/presentation/screens/product_listing_screen.dart';
import 'package:tezda_app/modules/product/presentation/screens/product_search_screen.dart';
import 'package:tezda_app/modules/profile/presentation/screens/edit_profile_screen.dart';
import 'package:tezda_app/modules/profile/presentation/screens/profile_screen.dart';
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
                return  const ResetPasswordScreen();
          }),
      GoRoute(
          name: AppPages.productListingScreen,
          path: AppPages.productListingScreen,
          builder: (_, state) => const DashboardBottomNavigation()),
      GoRoute(
          name: AppPages.productDetailsScreen,
          path: AppPages.productDetailsScreen,
          builder: (_, state) => ProductDetailsScreen(product: state.extra as ProductResponse)),

      GoRoute(
          name: AppPages.productSearchScreen,
          path: AppPages.productSearchScreen,
          builder: (_, state) => const ProductSearchScreen()),

      GoRoute(
          name: AppPages.profileScreen,
          path: AppPages.profileScreen,
          builder: (_, state) => const ProfileScreen()),

      GoRoute(
          name: AppPages.editProfileScreen,
          path: AppPages.editProfileScreen,
          builder: (_, state) => EditProfileScreen(user: state.extra as User)),
    ]);
