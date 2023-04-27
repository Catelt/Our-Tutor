import 'package:flutter/material.dart';

import '../constants/app_size.dart';
import 'svg_widget.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    Key? key,
    this.hint,
    this.errorText,
    this.text,
    this.onChange,
    this.onEditingComplete,
    this.assetIcon,
    this.icon,
  }) : super(key: key);

  final String? hint;
  final String? errorText;
  final String? text;
  final void Function(String)? onChange;
  final void Function()? onEditingComplete;
  final String? assetIcon;
  final IconData? icon;

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 14),
      onChanged: widget.onChange,
      onEditingComplete: widget.onEditingComplete,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          hintText: widget.hint,
          errorText: widget.errorText,
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
    if (widget.assetIcon != null) {
      return Padding(
        padding: const EdgeInsets.all(Sizes.p12),
        child: SvgWidget(assetName: widget.assetIcon!, size: 1),
      );
    }
    if (widget.icon != null) {
      return Padding(
        padding: const EdgeInsets.all(Sizes.p12),
        child: Icon(widget.icon),
      );
    }
    return null;
  }
}
