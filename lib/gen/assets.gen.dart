/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_right.svg
  SvgGenImage get icArrowRight =>
      const SvgGenImage('assets/icons/ic_arrow_right.svg');

  /// File path: assets/icons/ic_basket.svg
  SvgGenImage get icBasket => const SvgGenImage('assets/icons/ic_basket.svg');

  /// File path: assets/icons/ic_calendar.svg
  SvgGenImage get icCalendar =>
      const SvgGenImage('assets/icons/ic_calendar.svg');

  /// File path: assets/icons/ic_clock.svg
  SvgGenImage get icClock => const SvgGenImage('assets/icons/ic_clock.svg');

  /// File path: assets/icons/ic_cross.svg
  SvgGenImage get icCross => const SvgGenImage('assets/icons/ic_cross.svg');

  /// File path: assets/icons/ic_document.svg
  SvgGenImage get icDocument =>
      const SvgGenImage('assets/icons/ic_document.svg');

  /// File path: assets/icons/ic_general.webp
  AssetGenImage get icGeneral =>
      const AssetGenImage('assets/icons/ic_general.webp');

  /// File path: assets/icons/ic_general_home.svg
  SvgGenImage get icGeneralHome =>
      const SvgGenImage('assets/icons/ic_general_home.svg');

  /// File path: assets/icons/ic_height.svg
  SvgGenImage get icHeight => const SvgGenImage('assets/icons/ic_height.svg');

  /// File path: assets/icons/ic_location.svg
  SvgGenImage get icLocation =>
      const SvgGenImage('assets/icons/ic_location.svg');

  /// File path: assets/icons/ic_ok.svg
  SvgGenImage get icOk => const SvgGenImage('assets/icons/ic_ok.svg');

  /// File path: assets/icons/ic_profile.svg
  SvgGenImage get icProfile => const SvgGenImage('assets/icons/ic_profile.svg');

  /// File path: assets/icons/ic_ques_ok.svg
  SvgGenImage get icQuesOk => const SvgGenImage('assets/icons/ic_ques_ok.svg');

  /// File path: assets/icons/ic_scales.svg
  SvgGenImage get icScales => const SvgGenImage('assets/icons/ic_scales.svg');

  /// File path: assets/icons/ic_shoe.svg
  SvgGenImage get icShoe => const SvgGenImage('assets/icons/ic_shoe.svg');

  /// File path: assets/icons/icon_sett.svg
  SvgGenImage get iconSett => const SvgGenImage('assets/icons/icon_sett.svg');

  /// File path: assets/icons/icon_star.svg
  SvgGenImage get iconStar => const SvgGenImage('assets/icons/icon_star.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/im_heart.png
  AssetGenImage get imHeart =>
      const AssetGenImage('assets/images/im_heart.png');

  /// File path: assets/images/im_phone.png
  AssetGenImage get imPhone =>
      const AssetGenImage('assets/images/im_phone.png');

  /// File path: assets/images/im_ski.png
  AssetGenImage get imSki => const AssetGenImage('assets/images/im_ski.png');

  /// File path: assets/images/im_star.png
  AssetGenImage get imStar => const AssetGenImage('assets/images/im_star.png');

  /// File path: assets/images/mountains.jpg
  AssetGenImage get mountains =>
      const AssetGenImage('assets/images/mountains.jpg');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
