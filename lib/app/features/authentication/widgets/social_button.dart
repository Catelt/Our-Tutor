import 'package:flutter/material.dart';
import '../../../common_widgets/svg_widget.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.assetName,
    this.onTap,
    super.key,
  });

  final String assetName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: SvgWidget(
          assetName: assetName,
          size: 32,
        ),
      ),
    );
  }
}
