import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants/drop_down_theme.dart';
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
        decoration: DropDownTheme.dropDownOneTheme(context,
            fontSize: widget.fontSize,
            height: widget.height,
            label: widget.label,
            hint: widget.hint,
            errorText: widget.errorText,
            isSelect: widget.selected != null),
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
