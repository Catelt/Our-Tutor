import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants/drop_down_theme.dart';
import '../../../constants/specialties.dart';

class ButtonDropDownCategories extends StatefulWidget {
  const ButtonDropDownCategories(
      {super.key,
      this.label,
      this.hint,
      this.errorText,
      this.height,
      this.fontSize,
      this.selected,
      this.onChange});

  final String? label;
  final String? hint;
  final String? errorText;
  final double? height;
  final double? fontSize;
  final List<Specialty>? selected;
  final void Function(List<Specialty>)? onChange;

  @override
  State<ButtonDropDownCategories> createState() =>
      _ButtonDropDownCategoriesState();
}

class _ButtonDropDownCategoriesState extends State<ButtonDropDownCategories> {
  final List<Specialty> items = Specialty.getList;

  List<Specialty> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    selectedItems = List.from(widget.selected ?? []);
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2(
        decoration: DropDownTheme.dropDownTheme(
          context,
          fontSize: widget.fontSize,
          height: widget.height,
          label: widget.label,
          hint: widget.hint,
          errorText: widget.errorText,
        ),
        isDense: true,
        isExpanded: true,
        hint: Text(
          widget.hint ?? "",
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).hintColor,
          ),
        ),
        value: selectedItems.isEmpty ? null : selectedItems.last,
        onChanged: (value) {},
        selectedItemBuilder: (context) {
          return items.map(
            (item) {
              return Container(
                child: Text(
                  getText(),
                  style: const TextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              );
            },
          ).toList();
        },
        items: items.map((item) {
          return DropdownMenuItem<Specialty>(
            value: item,
            enabled: false,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                final _isSelected = selectedItems.contains(item);
                return InkWell(
                  onTap: () {
                    _isSelected
                        ? selectedItems.remove(item)
                        : selectedItems.add(item);
                    //This rebuilds the StatefulWidget to update the button's text
                    setState(() {});
                    //This rebuilds the dropdownMenu Widget to update the check mark
                    menuSetState(() {});
                    widget.onChange?.call(selectedItems);
                  },
                  child: Container(
                    height: double.infinity,
                    child: Row(
                      children: [
                        _isSelected
                            ? const Icon(Icons.check_box_outlined)
                            : const Icon(Icons.check_box_outline_blank),
                        const SizedBox(width: 16),
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }

  String getText() {
    List<String> result = [];
    for (var value in selectedItems) {
      result.add(value.name);
    }
    return result.join(", ");
  }
}
