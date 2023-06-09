import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../constants/drop_down_theme.dart';
import '../../../../network/model/country/country.dart';

class ButtonDropDownCountry extends StatefulWidget {
  const ButtonDropDownCountry({
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
  final MCountry? selected;
  final void Function(MCountry)? onChange;

  @override
  State<ButtonDropDownCountry> createState() => _ButtonDropDownCountryState();
}

class _ButtonDropDownCountryState extends State<ButtonDropDownCountry> {
  final List<MCountry> items = MCountry.getData();

  MCountry? selectedItems;

  @override
  Widget build(BuildContext context) {
    if (widget.selected != null) {
      selectedItems = items.firstWhere((e) => e.code == widget.selected?.code);
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
          return DropdownMenuItem<MCountry>(
            value: item,
            child: Text(
              item.name,
              style: TextStyle(fontSize: widget.fontSize),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            MCountry data = value as MCountry;
            widget.onChange?.call(data);
            selectedItems = data;
          });
        },
      ),
    );
  }
}
