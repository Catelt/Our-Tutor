import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../constants/drop_down_theme.dart';
import '../../data/level.dart';

class ButtonDropDownLevel extends StatefulWidget {
  const ButtonDropDownLevel({
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
  final MLevel? selected;
  final void Function(MLevel)? onChange;

  @override
  State<ButtonDropDownLevel> createState() => _ButtonDropDownLevelState();
}

class _ButtonDropDownLevelState extends State<ButtonDropDownLevel> {
  final List<MLevel> items = MLevel.getData();

  MLevel? selectedItems;

  @override
  Widget build(BuildContext context) {
    if (widget.selected != null && widget.selected?.id.isNotEmpty == true) {
      selectedItems = items.firstWhere((e) => e.id == widget.selected?.id);
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
          return DropdownMenuItem<MLevel>(
            value: item,
            child: Text(
              item.name,
              style: TextStyle(fontSize: widget.fontSize),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            MLevel data = value as MLevel;
            widget.onChange?.call(data);
            selectedItems = data;
          });
        },
      ),
    );
  }
}
