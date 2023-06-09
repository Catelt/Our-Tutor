import 'package:flutter/material.dart';

import '../constants/app_size.dart';
import '../constants/base_style.dart';
import 'svg_widget.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    Key? key,
    this.label,
    this.hint,
    this.errorText,
    this.text,
    this.onChange,
    this.onEditingComplete,
    this.assetIcon,
    this.icon,
    this.height,
    this.fontSize = 14,
    this.maxLines,
    this.enable,
    this.realOnly,
    this.onTap,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final String? errorText;
  final String? text;
  final void Function(String)? onChange;
  final void Function()? onEditingComplete;
  final String? assetIcon;
  final IconData? icon;
  final int? maxLines;
  final double? height;
  final double fontSize;
  final bool? enable;
  final bool? realOnly;
  final void Function()? onTap;

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
    controller.text = widget.text ?? "";
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));
    return TextField(
      style: TextStyle(fontSize: widget.fontSize),
      onChanged: widget.onChange,
      enabled: widget.enable,
      readOnly: widget.realOnly ?? false,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      textInputAction: TextInputAction.done,
      maxLines: widget.maxLines,
      controller: controller,
      decoration: InputDecoration(
          label: widget.label != null ? Text(widget.label ?? "") : null,
          hintText: widget.hint,
          errorText: widget.errorText,
          isDense: true,
          suffixIcon: checkIcon(),
          contentPadding: EdgeInsets.symmetric(
              vertical: widget.height ?? Sizes.p8, horizontal: Sizes.p12),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: const BorderSide(width: 1, color: Colors.grey)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(width: 1, color: BaseColor.red)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(width: 1, color: BaseColor.red)),
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
