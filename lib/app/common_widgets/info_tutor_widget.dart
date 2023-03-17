import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/svg_widget.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/constants/countries.dart';

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
                  const SvgWidget(
                    assetName: AppIcon.icMessage,
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
