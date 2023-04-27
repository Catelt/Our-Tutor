import 'package:flutter/material.dart';
import '../constants/app_size.dart';

class WrapListWidget extends StatelessWidget {
  const WrapListWidget({
    super.key,
    required this.list,
    this.color,
    this.colorSelected,
    this.isSelected = false,
    this.select = const [],
    this.onPress,
  });

  final List<String> list;
  final Color? color;
  final Color? colorSelected;
  final bool isSelected;
  final List<String> select;
  final void Function(List<String>)? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: Sizes.p4,
        runSpacing: Sizes.p4,
        children: [for (var item in list) _bodyItem(context, item)],
      ),
    );
  }

  Widget _bodyItem(BuildContext context, String name) {
    return GestureDetector(
      onTap: isSelected ? () => handleOnClick(name) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            color: handleColor(context, name).withOpacity(0.2),
            borderRadius: BorderRadius.circular(15)),
        child: Text(name,
            style: TextStyle(color: handleColor(context, name), fontSize: 12)),
      ),
    );
  }

  Color handleColor(BuildContext context, String name) {
    var result = color;
    if (select.contains(name)) {
      result = colorSelected;
    }
    return result ?? Theme.of(context).colorScheme.primary;
  }

  void handleOnClick(String name) {
    List<String> result = List.from(select);
    if (result.contains(name)) {
      result.remove(name);
    } else {
      result.add(name);
    }
    onPress?.call(result);
  }
}
