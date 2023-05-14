import 'package:flutter/material.dart';
import '../../../common_widgets/expand_container.dart';
import '../../../constants/app_size.dart';
import '../../../localization/localization_utils.dart';

class RequestLessonWidget extends StatelessWidget {
  const RequestLessonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandContainer(
        title: (expanded) => Container(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
              height: 46,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
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
                Text(
                  S.text.history_request,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                Text(S.text.schedule_edit_request,
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.primary)),
              ]),
            ),
        body: Container(
          padding: const EdgeInsets.all(Sizes.p16),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Center(child: Text(S.text.schedule_no_request)),
        ));
  }
}
