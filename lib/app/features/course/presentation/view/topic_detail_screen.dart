import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/course/presentation/widgets/course_item.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TopicDetailScreen extends StatelessWidget {
  const TopicDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        child: ListView(
          children: [
            CourseItem(
              onPress: () {},
            ),
            gapH12,
            Text(
              'List Topics',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => topicItem(context, index),
                separatorBuilder: (context, index) => gapH4,
                itemCount: 7),
            gapH8,
            Container(
              height: 400,
              child: SfPdfViewer.network(
                  'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                  pageLayoutMode: PdfPageLayoutMode.single),
            )
          ],
        ),
      ),
    );
  }

  Widget topicItem(BuildContext context, int index) {
    return Container(
        padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
        child: Text(
          '${index + 1}    The Internet',
          style: TextStyle(fontSize: 15),
        ));
  }
}
