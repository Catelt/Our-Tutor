import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/svg_widget.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({super.key, this.hint, this.assetIcon, this.icon});

  final String? hint;
  final String? assetIcon;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
          hintText: hint,
          isDense: true,
          suffixIcon: checkIcon(),
          contentPadding: const EdgeInsets.symmetric(
              vertical: Sizes.p8, horizontal: Sizes.p12),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: const BorderSide(width: 1, color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(
                  width: 1, color: Theme.of(context).colorScheme.primary))),
    );
  }

  Widget? checkIcon() {
    if (assetIcon != null) {
      return Padding(
        padding: const EdgeInsets.all(Sizes.p12),
        child: SvgWidget(assetName: assetIcon!, size: 1),
      );
    }
    if (icon != null) {
      return Padding(
        padding: const EdgeInsets.all(Sizes.p12),
        child: Icon(icon),
      );
    }
    return null;
  }
}
