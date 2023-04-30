import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../widgets/widget.dart';
import 'cubit/feedback_cubit.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key, required this.tutorId});
  final String tutorId;

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  late ScrollController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void loadMore(BuildContext context) {
    final state = context.read<FeedbackCubit>().state;
    if (state.hasNextPage &&
        !state.handle.isLoading &&
        _controller.position.extentAfter < 300) {
      context.read<FeedbackCubit>().getList(widget.tutorId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedbackCubit()..getList(widget.tutorId),
      child: BlocBuilder<FeedbackCubit, FeedbackState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          _controller = ScrollController()
            ..addListener(() => loadMore(context));
          return Scaffold(
            appBar: AppBar(
              title: Text("Feedback"),
              centerTitle: true,
              leading: DefaultAppBar.defaultLeading(),
            ),
            body: _body(),
          );
        },
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<FeedbackCubit, FeedbackState>(
      buildWhen: (previous, current) => previous.list != current.list,
      builder: (context, state) {
        return Stack(
          children: [
            ListView.separated(
              controller: _controller,
              itemCount: state.list.length,
              separatorBuilder: (context, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p4),
                color: Colors.black,
                height: 0.5,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                child: FeedbackItem(
                  feedback: state.list[index],
                ),
              ),
            ),
            BlocBuilder<FeedbackCubit, FeedbackState>(
              buildWhen: (previous, current) =>
                  previous.handle != current.handle,
              builder: (context, state) {
                return Visibility(
                  visible: state.handle.isLoading,
                  child: Center(
                    child: LoadingWidget(),
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}
