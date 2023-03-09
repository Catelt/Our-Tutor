import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class WrapListWidget extends StatelessWidget {
  const WrapListWidget({super.key, required this.list});

  final List<String> list;
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15)),
      child: Text(name,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 12)),
    );
  }
}
