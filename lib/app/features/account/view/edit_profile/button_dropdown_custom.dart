import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../data/level.dart';

class ButtonDropDownCustom extends StatefulWidget {
  const ButtonDropDownCustom({super.key});

  @override
  State<ButtonDropDownCustom> createState() => _ButtonDropDownCustomState();
}

class _ButtonDropDownCustomState extends State<ButtonDropDownCustom> {
  final List<MLevel> items = [
    MLevel(id: "BEGINNER", name: "Pre A1 (Beginner)"),
    MLevel(id: "HIGHER_BEGINNER", name: "A1 (Higher Beginner)"),
    MLevel(id: "PRE_INTERMEDIATE", name: "A2 (Pre-Intermediate)"),
    MLevel(id: "INTERMEDIATE", name: "B1 (Intermediate)"),
    MLevel(id: "UPPER_INTERMEDIATE", name: "B2 (Upper-Intermediate)"),
    MLevel(id: "ADVANCED", name: "C1 (Advanced)"),
    MLevel(id: "PROFICIENCY", name: "C2 (Proficiency)"),
  ];

  List<MLevel> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Select Items',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        value: selectedItems.isEmpty ? null : selectedItems.last,
        onChanged: (value) {},
        selectedItemBuilder: (context) {
          return items.map(
            (item) {
              return Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
          return DropdownMenuItem<MLevel>(
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
                  },
                  child: Container(
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
        buttonStyleData: const ButtonStyleData(
          height: 40,
          width: 140,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.zero,
        ),
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
