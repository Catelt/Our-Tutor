import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_size.dart';
import '../../../constants/base_style.dart';
import '../../../constants/course_level.dart';

class ButtonDropDownLevel extends StatefulWidget {
  const ButtonDropDownLevel(
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
  final List<CoursesLevel>? selected;
  final void Function(List<CoursesLevel>)? onChange;

  @override
  State<ButtonDropDownLevel> createState() => _ButtonDropDownLevelState();
}

class _ButtonDropDownLevelState extends State<ButtonDropDownLevel> {
  final List<CoursesLevel> items = CoursesLevel.values;

  List<CoursesLevel> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    selectedItems = List.from(widget.selected ?? []);
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
            labelStyle: TextStyle(fontSize: widget.fontSize),
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
          return DropdownMenuItem<CoursesLevel>(
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
