import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    this.label,
    this.hint,
    this.isPassword = false,
    this.suffixIcon,
    this.onChange,
    this.errorText,
    this.text,
  });

  final String? hint;
  final String? errorText;
  final String? text;
  final String? label;
  final void Function(String)? onChange;
  final IconData? suffixIcon;
  final bool isPassword;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _isVisibility = true;
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
      controller: controller,
      textInputAction: TextInputAction.done,
      keyboardType: widget.isPassword ? TextInputType.visiblePassword : null,
      obscureText: widget.isPassword ? _isVisibility : false,
      onChanged: (text) => widget.onChange?.call(text),
      decoration: InputDecoration(
          errorText: widget.errorText,
          labelText: widget.label,
          hintText: widget.hint,
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.all(10),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisibility = !_isVisibility;
                    });
                  },
                  icon: _isVisibility
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined))
              : widget.suffixIcon != null
                  ? Icon(widget.suffixIcon)
                  : null),
    );
  }
}
