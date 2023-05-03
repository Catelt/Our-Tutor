import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../cubit/schedule_cubit.dart';
import '../widgets/schedule_item.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  late ScrollController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void loadMore(BuildContext context) {
    final state = context.read<ScheduleCubit>().state;
    if (state.hasNextPage &&
        !state.handle.isLoading &&
        _controller.position.extentAfter < 300) {
      context.read<ScheduleCubit>().getList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScheduleCubit(),
      child: BlocBuilder<ScheduleCubit, ScheduleState>(
        builder: (context, state) {
          _controller = ScrollController()
            ..addListener(() => loadMore(context));
          return SafeArea(child: Scaffold(body: _body()));
        },
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      buildWhen: (previous, current) => previous.list != current.list,
      builder: (context, state) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
            child: CustomScrollView(
              controller: _controller,
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
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
                  // gapH8,
                  // latestBook(),
                  gapH16,
                ])),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: Sizes.p8),
                            child: ScheduleItem(bookings: state.list[index]),
                          ),
                      childCount: state.list.length),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  BlocBuilder<ScheduleCubit, ScheduleState>(
                    buildWhen: (previous, current) =>
                        previous.handle != current.handle,
                    builder: (context, state) {
                      return Visibility(
                          visible: state.handle.isLoading,
                          child: LoadingWidget());
                    },
                  ),
                  gapH32,
                ])),
              ],
            ));
      },
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
