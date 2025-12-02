import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../network/model/course/course.dart';
import '../../../../network/model/topic/topic.dart';
import '../../widgets/course_item.dart';
import 'cubit/topic_detail_cubit.dart';

class TopicDetailScreen extends StatelessWidget {
  const TopicDetailScreen({
    super.key,
    required this.id,
    this.course,
    this.initSelect = 0,
  });

  final String id;
  final MCourse? course;
  final int initSelect;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TopicDetailCubit()
        ..checkCourse(id: id, course: course, select: initSelect),
      child: BlocBuilder<TopicDetailCubit, TopicDetailState>(
        buildWhen: (previous, current) => previous.handle != current.handle,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: DefaultAppBar.defaultLeading(),
            ),
            body: state.handle.isLoading
                ? Center(
                    child: LoadingWidget(),
                  )
                : state.handle.isCompleted
                    ? body(context, state.handle.data ?? MCourse())
                    : NotFoundWidget(),
          );
        },
      ),
    );
  }

  Widget body(BuildContext context, MCourse item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      child: ListView(
        children: [
          CourseItem(
            course: item,
            removeButton: true,
          ),
          gapH12,
          Text(
            S.text.course_detail_list_topics,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          BlocBuilder<TopicDetailCubit, TopicDetailState>(
            buildWhen: (previous, current) =>
                previous.selected != current.selected,
            builder: (context, state) {
              return Column(
                children: [
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => topicItem(
                            context: context,
                            topic: item.topics[index],
                            index: index,
                            isSelected: state.selected == index,
                          ),
                      separatorBuilder: (context, index) => gapH4,
                      itemCount: item.topics.length),
                  gapH8,
                  Container(
                    height: 400,
                    child: item.topics[state.selected].nameFile.isNotEmpty
                        ? SfPdfViewer.network(
                            item.topics[state.selected].nameFile,
                            pageLayoutMode: PdfPageLayoutMode.single)
                        : null,
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }

  Widget topicItem({
    required BuildContext context,
    required MTopic topic,
    required int index,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: () => context.read<TopicDetailCubit>().onChangeSelected(index),
      child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
          decoration: isSelected
              ? BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest)
              : null,
          child: Text(
            '${index + 1}   ${topic.name}',
            style: TextStyle(fontSize: 15),
          )),
    );
  }
}
