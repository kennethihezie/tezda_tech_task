// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';

class ToastResp {
  static toastMsgError({String? resp}) {
    return Fluttertoast.showToast(
        timeInSecForIosWeb: 4,
        msg: resp.toString(),
        backgroundColor: AppColors.red,
        textColor: Colors.white,
        fontSize: 11);
  }

  static toastMsgInfo({String? resp}) {
    return Fluttertoast.showToast(
        msg: resp.toString(),
        timeInSecForIosWeb: 4,
        backgroundColor: AppColors.primary,
        textColor: Colors.white,
        fontSize: 11);
  }

  static toastMsgSuccess({String? resp}) {
    return Fluttertoast.showToast(
        timeInSecForIosWeb: 4,
        msg: resp.toString(),
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 11);
  }
}
