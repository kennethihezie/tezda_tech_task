/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/loading_animation.json
  String get loadingAnimation => 'assets/animations/loading_animation.json';

  /// List of all assets
  List<String> get values => [loadingAnimation];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/empty_state.png
  AssetGenImage get emptyState =>
      const AssetGenImage('assets/png/empty_state.png');

  /// List of all assets
  List<AssetGenImage> get values => [emptyState];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/check.svg
  SvgGenImage get check => const SvgGenImage('assets/svg/check.svg');

  /// File path: assets/svg/checkbox_check.svg
  SvgGenImage get checkboxCheck =>
      const SvgGenImage('assets/svg/checkbox_check.svg');

  /// File path: assets/svg/checkbox_uncheck.svg
  SvgGenImage get checkboxUncheck =>
      const SvgGenImage('assets/svg/checkbox_uncheck.svg');

  /// File path: assets/svg/eye_open.svg
  SvgGenImage get eyeOpen => const SvgGenImage('assets/svg/eye_open.svg');

  /// File path: assets/svg/eyes_closed.svg
  SvgGenImage get eyesClosed => const SvgGenImage('assets/svg/eyes_closed.svg');

  /// File path: assets/svg/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/svg/filter.svg');

  /// File path: assets/svg/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/svg/heart.svg');

  /// File path: assets/svg/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/search.svg');

  /// File path: assets/svg/uncheck.svg
  SvgGenImage get uncheck => const SvgGenImage('assets/svg/uncheck.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        check,
        checkboxCheck,
        checkboxUncheck,
        eyeOpen,
        eyesClosed,
        filter,
        heart,
        search,
        uncheck
      ];
}

class AppAssets {
  AppAssets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
