import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../network/model/course/course.dart';
import '../../../../network/model/topic/topic.dart';
import '../../../../network/model/tutor/tutor.dart';
import '../../../../routing/coordinator.dart';
import '../../widgets/course_item.dart';
import 'cubit/course_detail_cubit.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseDetailCubit()..getCourse(id),
      child: BlocBuilder<CourseDetailCubit, CourseDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: DefaultAppBar.defaultLeading(
                  onPressed: () => Navigator.of(context).pop()),
            ),
            body: state.handle.isLoading
                ? Center(
                    child: LoadingWidget(),
                  )
                : state.handle.isCompleted
                    ? viewCourseDetail(context, state.handle.data ?? MCourse())
                    : NotFoundWidget(),
          );
        },
      ),
    );
  }

  Widget viewCourseDetail(BuildContext context, MCourse item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      child: ListView(
        children: [
          CourseItem(
            course: item,
            onPress: () {},
          ),
          gapH12,
          detailWidget(title: "Overview", child: overviewWidget(item)),
          detailWidget(
              title: "Experience Level",
              child: Row(
                children: [
                  SvgWidget(
                    assetName: Assets.images.icUserGroup.path,
                    size: 20,
                  ),
                  gapW8,
                  //TODO: Handle level
                  Text(
                    'Intermediate',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )),
          detailWidget(
              title: "Course Length",
              child: Row(
                children: [
                  SvgWidget(
                    assetName: Assets.images.icBook.path,
                    size: 20,
                  ),
                  gapW8,
                  Text(
                    '${item.topics.length} topics',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )),
          detailWidget(
              title: "Suggested Tutors",
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: item.topics.length,
                itemBuilder: (context, index) => itemTopic(
                    context, (index + 1).toString(), item.topics[index]),
                separatorBuilder: (context, index) => gapH8,
              )),
          detailWidget(
              title: "Suggested Tutors",
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: item.users.length,
                itemBuilder: (context, index) =>
                    itemSuggestedTutor(context, item.users[index]),
                separatorBuilder: (context, index) => gapH8,
              )),
        ],
      ),
    );
  }

  Widget itemTopic(BuildContext context, String index, MTopic topic) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sizes.p8),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${index}.',
            style: TextStyle(fontSize: 16),
          ),
          Text(topic.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget itemSuggestedTutor(BuildContext context, MTutor tutor) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        tutor.name,
        style: TextStyle(fontSize: 16),
      ),
      gapW4,
      GestureDetector(
        onTap: () =>
            XCoordinator().showTutorDetail(tutor.userId, isReplace: true),
        child: Text(
          "More info",
          style: TextStyle(
              fontSize: 14, color: Theme.of(context).colorScheme.primary),
        ),
      )
    ]);
  }

  Widget detailWidget({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.p4, horizontal: Sizes.p12),
          child: child,
        ),
        gapH8
      ],
    );
  }

  Widget overviewWidget(MCourse course) {
    return Column(
      children: [
        titleInOverviewWidget('Why take this course'),
        Padding(
          padding: EdgeInsets.only(left: Sizes.p16),
          child: Text(course.reason,
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
        titleInOverviewWidget('What will you be able to do'),
        Padding(
          padding: EdgeInsets.only(left: Sizes.p16),
          child: Text(course.purpose,
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
      ],
    );
  }

  Widget titleInOverviewWidget(String title) {
    return Row(children: [
      SvgWidget(
        assetName: Assets.images.icCircleQuestion.path,
        size: 20,
        color: Colors.red,
      ),
      gapW8,
      Text(
        title,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
      )
    ]);
  }
}
