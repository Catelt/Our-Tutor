import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../constants/app_size.dart';
import '../constants/countries.dart';
import '../network/model/tutor/tutor.dart';
import '../routing/coordinator.dart';
import 'common_widgets.dart';

class InfoTutorWidget extends StatelessWidget {
  const InfoTutorWidget({super.key, required this.tutor});

  final MTutor tutor;

  @override
  Widget build(BuildContext context) {
    final national = ENational.getNational(tutor.country ?? "");
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          AvatarWidget(
            size: 68,
            url: tutor.avatar,
            name: tutor.name,
          ),
          gapW16,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tutor.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SvgWidget(assetName: national.imageUrl, size: 18),
                  gapW4,
                  Text(
                    national.name,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  XCoordinator().showChat();
                },
                child: Row(
                  children: [
                    SvgWidget(
                      assetName: Assets.images.icMessage.path,
                      size: 14,
                      // color: Theme.of(context).colorScheme.primary,
                    ),
                    gapW4,
                    Text(
                      'Direct Message',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
