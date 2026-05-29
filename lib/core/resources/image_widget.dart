import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SetImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final BoxFit fit;

  const SetImage({
    super.key,
    this.height,
    this.width,
    required this.image,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$image",
      height: height,
      width: width,
      fit: fit,
    );
  }
}

class SetSvgIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final String? icon;
  final BoxFit fit;

  const SetSvgIcon({
    super.key,
    this.height,
    this.width,
    required this.icon,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/$icon",
      height: height,
      width: width,
      fit: fit,
    );
  }
}

class SetIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final String? icon;
  final BoxFit fit;

  const SetIcon({
    super.key,
    this.height,
    this.width,
    required this.icon,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/$icon",
      height: height,
      width: width,
      fit: fit,
    );
  }
}
