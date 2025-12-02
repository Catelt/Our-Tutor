import 'package:flutter/material.dart';

import '../../constants/app_size.dart';
import '../../localization/localization_utils.dart';

class BottomSelectTheme extends StatelessWidget {
  const BottomSelectTheme(
      {super.key, required this.selected, required this.onTap});

  final ThemeMode selected;
  final void Function(ThemeMode) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).title_bottom_select_language,
            style: const TextStyle(fontSize: 18),
          ),
          gapH12,
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return itemTheme(
                ThemeMode.values[index],
              );
            },
            itemCount: ThemeMode.values.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  height: 2,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget itemTheme(ThemeMode item) {
    return GestureDetector(
      onTap: () => onTap(item),
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.p12),
        child: Row(children: [
          Text(
            getName(item),
            style: const TextStyle(fontSize: Sizes.p16),
          ),
          const Spacer(),
          if (item == selected) const Icon(Icons.check)
        ]),
      ),
    );
  }

  String getName(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return S.text.system_theme;
      case ThemeMode.light:
        return S.text.light_theme;
      case ThemeMode.dark:
        return S.text.dark_theme;
    }
  }
}
