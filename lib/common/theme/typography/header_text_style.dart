import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tezda_app/common/theme/size_config.dart';


class TextHeaderStyle {
  // ================== ExtraLarge ================== //
  TextStyle get extraLargeBold => GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: SizeConfig.pxToTextSize(26),
      height: 26.0.toLineHeight(26));

  TextStyle get extraLargeSemiBold => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: SizeConfig.pxToTextSize(24),
      height: 30.24.toLineHeight(24));

  TextStyle get extraLargeMedium => GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: SizeConfig.pxToTextSize(24),
      height: 30.24.toLineHeight(24));

  TextStyle get extraLargeRegular => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: SizeConfig.pxToTextSize(24),
      height: 30.24.toLineHeight(24));

  TextStyle get extraLargeLight => GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: SizeConfig.pxToTextSize(24),
      height: 30.24.toLineHeight(24));

  //================= Large ==================//
  TextStyle get largeBold => GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: SizeConfig.pxToTextSize(21),
      height: 21.0.toLineHeight(21));

  TextStyle get largeSemiBold => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: SizeConfig.pxToTextSize(20),
      height: 25.2.toLineHeight(20));

  TextStyle get largeMedium => GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: SizeConfig.pxToTextSize(20),
      height: 25.2.toLineHeight(20));

  TextStyle get largeRegular => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: SizeConfig.pxToTextSize(20),
      height: 25.2.toLineHeight(20));

  TextStyle get largeLight => GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: SizeConfig.pxToTextSize(20),
      height: 25.2.toLineHeight(20));

  //================ Medium ==================//
  TextStyle get mediumBold => GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 22.68.toLineHeight(18));

  TextStyle get mediumSemiBold => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 22.68.toLineHeight(18));

  TextStyle get medium => GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: SizeConfig.pxToTextSize(21),
      height: 21.0.toLineHeight(21));

  TextStyle get mediumRegular => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 22.68.toLineHeight(18));

  TextStyle get mediumLight => GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 22.68.toLineHeight(18));

  //================ Small ==================//
  TextStyle get smallBold => GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: SizeConfig.pxToTextSize(16),
      height: 20.16.toLineHeight(16));

  TextStyle get smallSemiBold => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: SizeConfig.pxToTextSize(16),
      height: 20.16.toLineHeight(16));

  TextStyle get small => GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: SizeConfig.pxToTextSize(16),
      height: 16.0.toLineHeight(16));

  TextStyle get smallRegular => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: SizeConfig.pxToTextSize(16),
      height: 20.16.toLineHeight(16));

  TextStyle get smallLight => GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: SizeConfig.pxToTextSize(16),
      height: 20.16.toLineHeight(16));
}
