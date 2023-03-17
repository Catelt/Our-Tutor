import 'package:flutter/material.dart';

class ExpandContainer extends StatefulWidget {
  const ExpandContainer({super.key, required this.title, required this.body});
  final Widget Function(bool) title;
  final Widget body;

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
            setState(() {
              expanded = !expanded;
            });
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
