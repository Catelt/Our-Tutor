import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:our_tutor/app/common_widgets/svg_widget.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/tutor/data/tutor.dart';

class TutorItem extends StatelessWidget {
  const TutorItem({super.key, required this.item});
  final Tutor item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.16),
                blurRadius: 5,
              )
            ]),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: Image.asset(item.imageUrl).image,
                ),
                gapW8,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.name, style: TextStyle(fontSize: 22)),
                    Row(
                      children: [
                        SvgWidget(assetName: item.national.imageUrl, size: 15),
                        gapW4,
                        Text(item.national.name)
                      ],
                    ),
                    RatingBar.builder(
                      initialRating: item.avgRating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    )
                  ],
                ),
                const Spacer(),
                SvgWidget(
                  assetName: AppIcon.icHeart,
                  size: 26,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            gapH12,
            specialtiesWidget(context, item.specialties),
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
    );
  }

  Widget specialtiesWidget(BuildContext context, List<String> specialty) {
    var list1 = specialty;
    List<String> list2 = [];

    if (specialty.length > 3) {
      final mid = (specialty.length / 2).round();
      list1 = specialty.sublist(0, mid);
      list2 = specialty.sublist(mid + 1);
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Wrap(
            spacing: Sizes.p4,
            runSpacing: Sizes.p4,
            children: [
              for (var specialty in list1) specialtyItem(context, specialty)
            ],
          ),
          Wrap(
            spacing: Sizes.p4,
            runSpacing: Sizes.p4,
            children: [
              for (var specialty in list2) specialtyItem(context, specialty)
            ],
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
            assetName: AppIcon.icBook,
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
