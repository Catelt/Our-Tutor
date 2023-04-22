import 'package:flutter/material.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_icon.dart';
import '../../../../constants/app_size.dart';
import '../widgets/course_item.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
        child: ListView(
          children: [
            Row(
              children: [
                SvgWidget(
                  assetName: AppIcon.course,
                  size: 100,
                ),
                gapW16,
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover Courses",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        TextFieldCustom(
                          hint: 'Course',
                          assetIcon: AppIcon.icSearch,
                        )
                      ]),
                )
              ],
            ),
            gapH12,
            Text(
              'LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields.',
              style: TextStyle(fontSize: 14),
            ),
            gapH12,
            Row(
              children: [
                Expanded(
                  child: TextFieldCustom(
                    hint: 'Select level',
                    icon: Icons.keyboard_arrow_down,
                  ),
                ),
                gapW8,
                Expanded(
                  child: TextFieldCustom(
                    hint: 'Select category',
                    icon: Icons.keyboard_arrow_down,
                  ),
                )
              ],
            ),
            gapH8,
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: TextFieldCustom(
                hint: 'Sort by level',
                icon: Icons.keyboard_arrow_down,
              ),
            ),
            gapH12,
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => CourseItem(),
              separatorBuilder: (context, index) => gapH12,
            ),
          ],
        ),
      ),
    );
  }
}
