import 'package:flutter/material.dart';

import 'app_size.dart';
import 'base_style.dart';

class DropDownTheme {
  static InputDecoration dropDownOneTheme(
    BuildContext context, {
    double? fontSize,
    double? height,
    String? label,
    String? hint,
    String? errorText,
    required bool isSelect,
  }) {
    return InputDecoration(
        labelStyle: TextStyle(fontSize: fontSize),
        hintStyle: TextStyle(fontSize: fontSize),
        label: label != null ? Text(label) : null,
        hintText: hint,
        errorText: errorText,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: height ?? Sizes.p8).add(
            EdgeInsets.only(right: Sizes.p12, left: !isSelect ? Sizes.p12 : 0)),
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
                width: 1, color: Theme.of(context).colorScheme.primary)));
  }

  static InputDecoration dropDownTheme(
    BuildContext context, {
    double? fontSize,
    double? height,
    String? label,
    String? hint,
    String? errorText,
  }) {
    return InputDecoration(
        labelStyle: TextStyle(fontSize: fontSize),
        label: label != null ? Text(label) : null,
        hintText: hint,
        errorText: errorText,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: height ?? Sizes.p8)
            .add(const EdgeInsets.only(right: Sizes.p12)),
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
                width: 1, color: Theme.of(context).colorScheme.primary)));
  }
}
