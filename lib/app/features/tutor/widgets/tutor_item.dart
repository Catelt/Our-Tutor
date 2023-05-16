import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../constants/countries.dart';
import '../../../constants/specialties.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/model/tutor/tutor.dart';
import '../../../routing/coordinator.dart';

class TutorItem extends StatelessWidget {
  const TutorItem({super.key, required this.item, this.favoriteCallback});
  final MTutor item;
  final void Function(MTutor)? favoriteCallback;

  @override
  Widget build(BuildContext context) {
    final national = ENational.getNational(item.country ?? "");
    final specialties =
        item.specialties.split(',').map((e) => Specialty.getName(e)).toList();
    return InkWell(
      onTap: () => XCoordinator().showTutorDetail(item.userId.toString()),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(Sizes.p16)
                .add(const EdgeInsets.only(bottom: Sizes.p12)),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
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
                AvatarWidget(name: item.name, url: item.avatar),
                gapW8,
                Text(item.name, style: TextStyle(fontSize: 22)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgWidget(assetName: national.imageUrl, size: 15),
                    gapW4,
                    Text(national.name)
                  ],
                ),
                RatingBarWidget(avgRating: item.rating),
                gapH12,
                WrapListWidget(list: specialties),
                gapH12,
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    item.bio,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    textAlign: TextAlign.justify,
                  ),
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
            child: GestureDetector(
              onTap: () {
                favoriteCallback?.call(item);
              },
              child: SvgWidget(
                assetName: item.isFavorite
                    ? Assets.images.icHeartFill.path
                    : Assets.images.icHeart.path,
                size: 26,
                color: Theme.of(context).colorScheme.primary,
              ),
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
          S.text.book_button,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 14),
        )
      ]),
    );
  }
}
