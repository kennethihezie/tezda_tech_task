import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import 'package:intl/intl.dart';

extension CurrencyUtil on num {
  static final f = NumberFormat("###,###,###,###,###,###,##0.00", "en_NG");
  static final _f2 = NumberFormat("#,##0", "en_NG");

  String get formatCurrencyWithoutSymbolAndDividing => f.format(this);

  String get formatCurrency => "₦${f.format(this / 100)}";

  String get formatCurrencyWithoutDividing => "\$${f.format(this)}";

  String get formatCurrencyWithoutDividingAndZero => "\$${_f2.format(this)}";

  String get formatCurrencyWithoutSymbol => f.format(this / 100);

  String get formatCurrencyWithoutLeadingZero => "\$${_f2.format(this / 100)}";
}

extension BuildContextEx on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  GoRouter get router => GoRouter.of(this);

  bool get isSmallDevice => mediaQuery.size.width < 380;
}

extension GoRouterEx on GoRouter {
  void popUntilPath(BuildContext context, String ancestorPath) {
    while (routerDelegate.currentConfiguration.matches.last.matchedLocation !=
        ancestorPath) {
      if (!context.canPop()) {
        return;
      }
      context.pop();
    }
  }
}


extension Gap on num {
  Widget get verticalGap => SizedBox(
        height: toDouble(),
      );

  Widget get horizontalGap => SizedBox(
        width: toDouble(),
      );
}

extension StringEx on String? {
  String get orEmpty => this ?? "";

  bool get isEmail {
    final emailPattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailPattern.hasMatch(this ?? '');
  }

  String get cleanPhoneNumberForInput {
    if (this == null) return '';
    return '0${this?.replaceAll(RegExp(r'[^\d]'), '')}';
  }
}

extension BoolEx on bool? {
  bool get isTrue => this == true;

  bool get isFalse => this == false;

  bool get orFalse => this ?? false;
}
