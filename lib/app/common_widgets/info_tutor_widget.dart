import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../constants/app_size.dart';
import '../constants/countries.dart';
import 'svg_widget.dart';

class InfoTutorWidget extends StatelessWidget {
  const InfoTutorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundImage: Image.asset('assets/image_tutor/sample.jpg').image,
          ),
          gapW16,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Keegan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SvgWidget(assetName: vn.imageUrl, size: 18),
                  gapW4,
                  Text(
                    vn.name,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
