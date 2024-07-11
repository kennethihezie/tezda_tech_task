import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/viewmodel/forgot_password_viewmodel.dart';
import 'package:tezda_app/modules/auth/forgot_password/presentation/viewmodel/reset_password_viewmodel.dart';

final forgotPasswordViewModelProvider = ChangeNotifierProvider((_) => ForgotPasswordViewmodel());

final resetPasswordViewModelProvider = ChangeNotifierProvider((_) => ResetPasswordViewmodel());