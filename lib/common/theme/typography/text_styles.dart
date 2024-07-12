
import 'package:flutter/material.dart';

import 'body_text_style.dart';
import 'header_text_style.dart';

typedef AppTextStyleBuilder = TextStyle Function(BuildContext context);

class AppTextStyle {
  const AppTextStyle._();

  static TextHeaderStyle get header => TextHeaderStyle();

  static TextBodyStyle get body => TextBodyStyle();
}
