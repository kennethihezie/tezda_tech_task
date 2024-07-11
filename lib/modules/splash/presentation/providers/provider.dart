import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/splash/presentation/viewmodel/splash_screen_viewmodel.dart';

final splashScreenViewModelProvider = ChangeNotifierProvider((_) => SplashScreenViewmodel());
