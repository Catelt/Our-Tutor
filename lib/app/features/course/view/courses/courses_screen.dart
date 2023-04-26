import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../widgets/course_item.dart';
import 'cubit/courses_cubit.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  late ScrollController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void loadMore(BuildContext context) {
    final state = context.read<CoursesCubit>().state;
    if (state.hasNextPage &&
        !state.handle.isLoading &&
        _controller.position.extentAfter < 300) {
      context.read<CoursesCubit>().getList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursesCubit(),
      child: BlocBuilder<CoursesCubit, CoursesState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          _controller = ScrollController()
            ..addListener(() => loadMore(context));
          return _body();
        },
      ),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<CoursesCubit, CoursesState>(
          buildWhen: (previous, current) => previous.courses != current.courses,
          builder: (context, state) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
                child: CustomScrollView(
                  controller: _controller,
                  slivers: [
                    SliverList(
                        delegate:
                            SliverChildListDelegate([_filterWidget(context)])),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (context, index) => Padding(
                                padding:
                                    const EdgeInsets.only(bottom: Sizes.p12),
                                child: CourseItem(
                                  course: state.courses[index],
                                ),
                              ),
                          childCount: state.courses.length),
                    ),
                  ],
                ));
          },
        ),
      ),
    );
  }

  Widget _filterWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            SvgWidget(
              assetName: Assets.images.course.path,
              size: 100,
            ),
            gapW16,
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discover Courses",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextFieldCustom(
                      hint: 'Course',
                      assetIcon: Assets.images.icSearch.path,
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
      ],
    );
  }
}
