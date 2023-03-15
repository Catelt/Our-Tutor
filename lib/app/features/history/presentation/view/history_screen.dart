import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
        child: ListView(
          children: [
            const SvgWidget(
              assetName: AppIcon.history,
              size: 120,
            ),
            const Text(
              'History',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                  ),
                  Expanded(
                    child: Text(
                      'The following is a list of lessons you have attended\nYou can review the details of the lessons you have attended',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            // ListView.separated(
            //   physics: const NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: 5,
            //   itemBuilder: (context, index) => const ScheduleItem(),
            //   separatorBuilder: ((context, index) => gapH8),
            // )
          ],
        ),
      ),
    );
  }
}
