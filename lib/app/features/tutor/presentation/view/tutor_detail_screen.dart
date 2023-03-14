import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/tutor/data/tutor.dart';

class TutorDetailScreen extends StatelessWidget {
  const TutorDetailScreen({super.key, required this.item});
  final Tutor item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: Image.asset(item.imageUrl).image,
                  ),
                  gapW16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      RatingBarWidget(
                          avgRating: item.avgRating, numRating: item.numRating),
                      gapH12,
                      Row(
                        children: [
                          SvgWidget(
                              assetName: item.national.imageUrl, size: 22),
                          gapW4,
                          Text(
                            item.national.name,
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              gapH12,
              Text(
                item.description,
                style: const TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p20, horizontal: Sizes.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconButton(context,
                        asset: AppIcon.icHeart, title: 'Favorite'),
                    iconButton(context,
                        asset: AppIcon.icReport, title: 'Report'),
                    iconButton(context,
                        asset: AppIcon.icStar, title: 'Reviews'),
                  ],
                ),
              ),
              Center(child: RemoteVideoWidget(url: item.introduceUrl)),
              detailWidget(
                  title: 'Languages',
                  child: WrapListWidget(list: item.languages)),
              detailWidget(
                  title: 'Specialties',
                  child: WrapListWidget(list: item.specialties)),
              detailWidget(
                  title: 'Suggested courses',
                  child: const SizedBox(
                    height: 30,
                  )),
              detailWidget(
                  title: 'Interests',
                  child: Text(
                    item.interest,
                    style: const TextStyle(fontSize: 14),
                  )),
              detailWidget(
                  title: 'Teaching experience',
                  child: Text(
                    item.experience,
                    style: const TextStyle(fontSize: 14),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconButton(BuildContext context,
      {required String title, required String asset}) {
    return Column(
      children: [
        SvgWidget(
          assetName: asset,
          size: 20,
          color: Theme.of(context).colorScheme.primary,
        ),
        gapH4,
        Text(
          title,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 13),
        )
      ],
    );
  }

  Widget detailWidget({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.p4, horizontal: Sizes.p12),
          child: child,
        ),
        gapH8
      ],
    );
  }
}
