import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../routing/app_routing.dart';
import '../../data/tutor.dart';

class TutorItem extends StatelessWidget {
  const TutorItem({super.key, required this.item});
  final Tutor item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.goNamed(
        AppRoute.tutor.name,
        params: {'id': item.id.toString()},
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(Sizes.p16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.16),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, 2))
                ]),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: Image.asset(item.imageUrl).image,
                ),
                gapW8,
                Text(item.name, style: TextStyle(fontSize: 22)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgWidget(assetName: item.national.imageUrl, size: 15),
                    gapW4,
                    Text(item.national.name)
                  ],
                ),
                RatingBarWidget(avgRating: item.avgRating),
                gapH12,
                WrapListWidget(list: item.specialties),
                gapH12,
                Text(
                  item.description,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  textAlign: TextAlign.justify,
                ),
                gapH12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [bookButton(context)],
                )
              ],
            ),
          ),
          Positioned(
            top: Sizes.p16,
            right: Sizes.p16,
            child: SvgWidget(
              assetName: Assets.images.icHeart.path,
              size: 26,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget specialtyItem(BuildContext context, String name) {
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

  Widget bookButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: Row(children: [
        SvgWidget(
            assetName: Assets.images.icSchedule.path,
            width: 14,
            height: 11,
            color: Theme.of(context).colorScheme.primary),
        gapW8,
        Text(
          'Book',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 14),
        )
      ]),
    );
  }
}
