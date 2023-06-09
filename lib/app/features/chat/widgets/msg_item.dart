import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../constants/app_size.dart';
import '../../../network/model/message.dart';

class MsgItem extends StatelessWidget {
  const MsgItem({
    super.key,
    required this.item,
    this.index = 0,
    required this.isLast,
  });

  final XMessage item;
  final bool isLast;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isLeft = item.indexChat == 0;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p12).add(
            EdgeInsets.only(
                left: isLeft ? 0 : Sizes.p16, right: isLeft ? Sizes.p16 : 0)),
        child: item.indexChat == 0 ? msgBot(context) : msgUser(context));
  }

  Widget msgBot(BuildContext context) {
    final recent = (item.time.difference(DateTime.now()).inSeconds).abs() < 5;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.images.logo.path,
            height: 30,
            width: 30,
          ),
          gapW8,
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: Sizes.p8, horizontal: Sizes.p16),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(Sizes.p12)),
              child: isLast && recent
                  ? AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          item.msg,
                          textStyle: const TextStyle(fontSize: Sizes.p16),
                          speed: const Duration(milliseconds: 50),
                        ),
                      ],
                      isRepeatingAnimation: false,
                      repeatForever: false,
                    )
                  : Text(
                      item.msg,
                      style: const TextStyle(fontSize: Sizes.p16),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget msgUser(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: Sizes.p8, horizontal: Sizes.p16),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(Sizes.p12)),
              child:
                  Text(item.msg, style: const TextStyle(fontSize: Sizes.p16)),
            ),
          ),
        ],
      ),
    );
  }
}
