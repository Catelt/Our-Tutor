import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../constants/base_style.dart';
import '../../../network/model/feedback/feedback.dart';
import '../../../utils/extension/datetime.dart';

class FeedbackItem extends StatelessWidget {
  const FeedbackItem({super.key, required this.feedback});
  final MFeedback feedback;

  @override
  Widget build(BuildContext context) {
    final avatar = feedback.firstInfo?.avatar;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.p8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            foregroundImage: avatar != null && avatar.isNotEmpty == true
                ? CachedNetworkImageProvider(avatar)
                : null,
          ),
          gapW12,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feedback.firstInfo?.name ?? "",
                  style: BaseTextStyle.body1(),
                ),
                RatingBarWidget(
                  avgRating: feedback.rating,
                ),
                Text(feedback.content,
                    textAlign: TextAlign.justify, style: BaseTextStyle.body3()),
                Text(
                  DateTime.parse(feedback.updatedAt).timeDistance,
                  style:
                      BaseTextStyle.body2().copyWith(color: Colors.grey[500]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
