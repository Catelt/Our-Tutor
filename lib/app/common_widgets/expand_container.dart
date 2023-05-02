import 'package:flutter/material.dart';

class ExpandContainer extends StatefulWidget {
  const ExpandContainer(
      {super.key,
      required this.title,
      required this.body,
      this.canExpand = false});
  final Widget Function(bool) title;
  final Widget body;
  final bool canExpand;

  @override
  State<ExpandContainer> createState() => _ExpandContainerState();
}

class _ExpandContainerState extends State<ExpandContainer> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (widget.canExpand) {
              setState(() {
                expanded = !expanded;
              });
            }
          },
          child: widget.title(expanded),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return SizeTransition(sizeFactor: animation, child: child);
          },
          child: expanded ? widget.body : null,
        )
      ],
    );
  }
}
