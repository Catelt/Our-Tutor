import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/svg_widget.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.assetName,
    super.key,
  });

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
