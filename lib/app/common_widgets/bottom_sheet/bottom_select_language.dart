import 'package:flutter/material.dart';

import '../../constants/app_size.dart';
import '../../constants/countries.dart';
import '../../localization/localization_utils.dart';
import '../../network/model/national.dart';
import '../common_widgets.dart';

class BottomSelectLanguage extends StatelessWidget {
  const BottomSelectLanguage(
      {super.key, required this.selected, required this.onTap});

  final National selected;
  final void Function(String) onTap;

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
              final item = XAppLanguage.languages[index];
              return itemLanguage(
                item,
              );
            },
            itemCount: XAppLanguage.languages.length,
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

  Widget itemLanguage(National item) {
    return GestureDetector(
      onTap: () => onTap(item.code),
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.p12),
        child: Row(children: [
          SizedBox(
            height: 24,
            width: 28,
            child: SvgWidget(
              assetName: item.imageUrl,
            ),
          ),
          gapW8,
          Text(
            item.name,
            style: const TextStyle(fontSize: Sizes.p16),
          ),
          const Spacer(),
          if (item == selected) const Icon(Icons.check)
        ]),
      ),
    );
  }
}
