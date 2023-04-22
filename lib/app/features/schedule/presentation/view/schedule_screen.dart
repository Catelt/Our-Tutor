import 'package:flutter/material.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/svg_widget.dart';
import '../../../../constants/app_size.dart';
import '../widgets/schedule_item.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
        child: ListView(
          children: [
            SvgWidget(
              assetName: Assets.images.calendar.path,
              size: 120,
            ),
            const Text(
              'Schedule',
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
                      'Here is a list of the sessions you have booked\nYou can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            gapH8,
            latestBook(),
            gapH16,
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => const ScheduleItem(),
              separatorBuilder: ((context, index) => gapH8),
            )
          ],
        ),
      ),
    );
  }

  Widget latestBook() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Latest Book',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        gapH4,
        Table(
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
          },
          children: [
            tableRowItem('Name', 'Everybody 5 - Unit 4 - Lesson 3.pdf'),
            tableRowItem('Page', '1'),
            tableRowItem('Description', ''),
          ],
        ),
      ],
    );
  }

  TableRow tableRowItem(String title, String topic) {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p4),
            color: Colors.grey[200],
            child: Center(child: Text(title)),
          ),
        ),
        Container(height: 50, child: Center(child: Text(topic))),
      ],
    );
  }
}
