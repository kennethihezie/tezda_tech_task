import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/auth/signup/presentation/viewmodels/signup_viewmodel.dart';

final signUpViewModelProvider = ChangeNotifierProvider((_) => SignupViewmodel());
