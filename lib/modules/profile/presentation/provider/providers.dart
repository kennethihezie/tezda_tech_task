import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/profile/presentation/viewmodel/edit_profile_viewmodel.dart';
import 'package:tezda_app/modules/profile/presentation/viewmodel/profile_viewmodel.dart';

final profileViewModelProvider = ChangeNotifierProvider((_) => ProfileViewmodel());

final editProfileViewModelProvider = ChangeNotifierProvider((_) => EditProfileViewmodel());

