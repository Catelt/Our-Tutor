import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  const SvgWidget({
    super.key,
    required this.assetName,
    this.color,
    this.width,
    this.height,
    this.size,
  });

  final String assetName;
  final Color? color;
  final double? width;
  final double? height;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: size ?? width,
      height: size ?? height,
      colorFilter: color != null
          ? ColorFilter.mode(
              Theme.of(context).colorScheme.primary,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}
