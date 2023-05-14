import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_size.dart';
import '../../../constants/base_style.dart';
import '../../../constants/sort_level.dart';

class ButtonDropDownSort extends StatefulWidget {
  const ButtonDropDownSort({
    super.key,
    this.label,
    this.hint,
    this.errorText,
    this.height,
    this.fontSize = 14,
    this.onChange,
    this.selected,
  });

  final String? label;
  final String? hint;
  final String? errorText;
  final double? height;
  final double? fontSize;
  final bool? selected;
  final void Function(bool)? onChange;

  @override
  State<ButtonDropDownSort> createState() => _ButtonDropDownSortState();
}

class _ButtonDropDownSortState extends State<ButtonDropDownSort> {
  final List<MSortLevel> items = MSortLevel.values;

  MSortLevel? selectedItems;

  @override
  Widget build(BuildContext context) {
    if (widget.selected != null) {
      selectedItems = MSortLevel.get(widget.selected ?? false);
    } else {
      selectedItems = null;
    }
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
            labelStyle: TextStyle(fontSize: widget.fontSize),
            hintStyle: TextStyle(fontSize: widget.fontSize),
            label: widget.label != null ? Text(widget.label ?? "") : null,
            hintText: widget.hint,
            errorText: widget.errorText,
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: widget.height ?? Sizes.p8).add(
                    EdgeInsets.only(
                        right: Sizes.p12,
                        left: widget.selected == null ? Sizes.p12 : 0)),
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
        value: selectedItems,
        isDense: true,
        isExpanded: true,
        items: items.map((item) {
          return DropdownMenuItem<MSortLevel>(
            value: item,
            child: Text(
              item.getName,
              style: TextStyle(fontSize: widget.fontSize),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            MSortLevel data = value as MSortLevel;
            widget.onChange?.call(data == MSortLevel.asc);
            selectedItems = data;
          });
        },
      ),
    );
  }
}
