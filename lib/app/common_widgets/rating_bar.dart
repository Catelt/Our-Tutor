import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({
    super.key,
    required this.avgRating,
    this.numRating,
  });

  final double avgRating;
  final int? numRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RatingBar.builder(
          initialRating: avgRating,
          minRating: 1,
          allowHalfRating: true,
          itemSize: 15,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
        gapW8,
        Visibility(
          visible: numRating != null,
          child: Text(
            '($numRating)',
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: Colors.grey[100],
            ),
          ),
        )
      ],
    );
  }
}
