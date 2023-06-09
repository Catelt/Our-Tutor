import 'package:flutter/material.dart';

import '../constants/app_size.dart';
import '../constants/base_style.dart';
import '../localization/localization_utils.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.find_in_page,
            size: 128,
            color: Theme.of(context).colorScheme.primary,
          ),
          gapH8,
          Text(
            S.text.common_empty,
            style: BaseTextStyle.heading3(),
          ),
        ],
      ),
    );
  }
}
