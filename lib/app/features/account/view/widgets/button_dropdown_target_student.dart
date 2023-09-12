import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../constants/drop_down_theme.dart';

class ButtonDropDownTargetStudent extends StatefulWidget {
  const ButtonDropDownTargetStudent({
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
  final String? selected;
  final void Function(String)? onChange;

  @override
  State<ButtonDropDownTargetStudent> createState() =>
      _ButtonDropDownTargetStudentState();
}

class _ButtonDropDownTargetStudentState
    extends State<ButtonDropDownTargetStudent> {
  final List<String> items = ["Beginner", "Intermediate", "Advanced"];

  String? selectedItems;

  @override
  Widget build(BuildContext context) {
    if (widget.selected != null && widget.selected?.isNotEmpty == true) {
      selectedItems = widget.selected;
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
            isSelect: selectedItems != null),
        value: selectedItems,
        isDense: true,
        isExpanded: true,
        items: items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: TextStyle(fontSize: widget.fontSize),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            String data = value as String;
            widget.onChange?.call(data);
            selectedItems = data;
          });
        },
      ),
    );
  }
}
