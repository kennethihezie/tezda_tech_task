import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/keys/app_keys.dart';
import 'package:tezda_app/common/navigation/pages.dart';

class SplashScreenViewmodel extends BaseViewModel {
  void checkLoginStatus({required BuildContext context}){
     if(storage.getDataFromDisk(AppKeys.keepMeLoggedIn) ?? false){
       context.go(AppPages.productListingScreen);
     } else if (storage.getDataFromDisk(AppKeys.userResponse) != null) {
       context.go(AppPages.loginScreen);
     } else {
       context.go(AppPages.signupScreen);
     }
  }
}