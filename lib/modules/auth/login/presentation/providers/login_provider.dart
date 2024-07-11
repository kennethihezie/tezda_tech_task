import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/auth/login/presentation/viewmodel/login_viewmodel.dart';

final loginViewModelProvider = ChangeNotifierProvider((_) => LoginViewmodel());