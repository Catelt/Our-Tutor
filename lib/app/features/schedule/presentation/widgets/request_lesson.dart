import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class RequestLessonWidget extends StatefulWidget {
  const RequestLessonWidget({super.key});

  @override
  State<RequestLessonWidget> createState() => _RequestLessonWidgetState();
}

class _RequestLessonWidgetState extends State<RequestLessonWidget> {
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
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
            height: 46,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(children: [
              if (expanded)
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 12,
                )
              else
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              gapW4,
              const Text(
                'Request for lesson',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text('Edit Request',
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary)),
            ]),
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return SizeTransition(sizeFactor: animation, child: child);
          },
          child: expanded
              ? Container(
                  padding: const EdgeInsets.all(Sizes.p16),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                          'Currently there are no requests for this class. Please write down any requests for the teacher.')),
                )
              : null,
        )
      ],
    );
  }
}
