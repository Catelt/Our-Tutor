import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_size.dart';
import '../../../../constants/base_style.dart';
import '../../data/level.dart';

class ButtonDropDownOneCustom extends StatefulWidget {
  const ButtonDropDownOneCustom({
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
  State<ButtonDropDownOneCustom> createState() =>
      _ButtonDropDownOneCustomState();
}

class _ButtonDropDownOneCustomState extends State<ButtonDropDownOneCustom> {
  final List<MLevel> items = [
    MLevel(id: "BEGINNER", name: "Pre A1 (Beginner)"),
    MLevel(id: "HIGHER_BEGINNER", name: "A1 (Higher Beginner)"),
    MLevel(id: "PRE_INTERMEDIATE", name: "A2 (Pre-Intermediate)"),
    MLevel(id: "INTERMEDIATE", name: "B1 (Intermediate)"),
    MLevel(id: "UPPER_INTERMEDIATE", name: "B2 (Upper-Intermediate)"),
    MLevel(id: "ADVANCED", name: "C1 (Advanced)"),
    MLevel(id: "PROFICIENCY", name: "C2 (Proficiency)"),
  ];

  MLevel? selectedItems;

  @override
  void initState() {
    super.initState();
    if (widget.selected != null && widget.selected?.isNotEmpty == true) {
      selectedItems = items.firstWhere((e) => e.id == widget.selected);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                EdgeInsets.symmetric(vertical: widget.height ?? Sizes.p8)
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
                    width: 1, color: Theme.of(context).colorScheme.primary))),
        value: selectedItems,
        isDense: true,
        isExpanded: true,
        items: items.map((item) {
          return DropdownMenuItem<MLevel>(
            value: item,
            child: Text(item.name),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            MLevel data = value as MLevel;
            widget.onChange?.call(data.id);
            selectedItems = data;
          });
        },
      ),
    );
  }
}
