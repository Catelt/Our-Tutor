import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../localization/localization_utils.dart';
import '../../widgets/widgets.dart';
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
                      S.text.courses_title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    BlocBuilder<CoursesCubit, CoursesState>(
                      buildWhen: (previous, current) =>
                          previous.nameCourse != current.nameCourse,
                      builder: (context, state) {
                        return TextFieldCustom(
                          hint: S.text.course,
                          assetIcon: Assets.images.icSearch.path,
                          text: state.nameCourse,
                          onEditingComplete:
                              context.read<CoursesCubit>().onSubmitSearch,
                          onChange:
                              context.read<CoursesCubit>().onChangeNameCourse,
                        );
                      },
                    )
                  ]),
            )
          ],
        ),
        gapH12,
        Text(
          S.text.courses_sub_title,
          style: TextStyle(fontSize: 14),
        ),
        gapH12,
        BlocBuilder<CoursesCubit, CoursesState>(
          buildWhen: (previous, current) => previous.levels != current.levels,
          builder: (context, state) {
            return ButtonDropDownLevel(
              selected: state.levels,
              hint: S.text.courses_select_level,
              onChange: context.read<CoursesCubit>().onChangeLevels,
            );
          },
        ),
        gapH8,
        BlocBuilder<CoursesCubit, CoursesState>(
          buildWhen: (previous, current) =>
              previous.categories != current.categories,
          builder: (context, state) {
            return ButtonDropDownCategories(
              selected: state.categories,
              hint: S.text.courses_select_category,
              onChange: context.read<CoursesCubit>().onChangeCategories,
            );
          },
        ),
        gapH8,
        BlocBuilder<CoursesCubit, CoursesState>(
          buildWhen: (previous, current) => previous.sort != current.sort,
          builder: (context, state) {
            return ButtonDropDownSort(
              selected: state.sort,
              hint: S.text.courses_select_sort_level,
              onChange: context.read<CoursesCubit>().onChangeSort,
            );
          },
        ),
        gapH12,
        PrimaryButton(
          text: S.text.common_reset,
          onPressed: context.read<CoursesCubit>().resetFilter,
        ),
        gapH12,
      ],
    );
  }
}
