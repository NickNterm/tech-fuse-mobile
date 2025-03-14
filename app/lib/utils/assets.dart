import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Assets {
  static AssetIcons icons = AssetIcons();

  static Widget fromSvg({
    required String svgPath,
    Color? color,
    double? width,
    double? height,
    BoxFit? fit,
    BlendMode blendMode = BlendMode.srcIn,
    double padding = 0,
  }) {
    return Container(
      width: width ?? 24,
      height: height ?? 24,
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: SvgPicture.asset(
          svgPath,
          width: width ?? 24,
          height: height ?? 24,
          alignment: Alignment.center,
          colorFilter: color == null
              ? null
              : ColorFilter.mode(
                  color,
                  blendMode,
                ),
          fit: fit ?? BoxFit.contain,
        ),
      ),
    );
  }
}

class AssetIcons {
  String get testIcon => '----';
}
