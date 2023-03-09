import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:our_tutor/app/common_widgets/svg_widget.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class TutorItem extends StatelessWidget {
  const TutorItem({super.key});

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
                  backgroundImage: Image.asset(AppIcon.sample).image,
                ),
                gapW8,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Keegan', style: TextStyle(fontSize: 22)),
                    Row(
                      children: const [
                        SvgWidget(assetName: AppIcon.icVn, size: 15),
                        gapW4,
                        Text('Viet nam')
                      ],
                    ),
                    RatingBar.builder(
                      initialRating: 3,
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
            Container(
              constraints: const BoxConstraints(minHeight: 60, maxHeight: 60),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: Sizes.p4,
                  runSpacing: Sizes.p4,
                  children: [
                    for (var i = 0; i < 5; i++) tutorTypeItem(context)
                  ],
                ),
              ),
            ),
            gapH12,
            const Text(
              'I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience',
              style: TextStyle(
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

  Widget tutorTypeItem(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15)),
      child: Text('English for Business',
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
