import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../localization/localization_utils.dart';
import '../cubit/history_cubit.dart';
import '../widgets/history_item.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late ScrollController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void loadMore(BuildContext context) {
    final state = context.read<HistoryCubit>().state;
    if (state.hasNextPage &&
        !state.handle.isLoading &&
        _controller.position.extentAfter < 300) {
      context.read<HistoryCubit>().getList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryCubit(),
      child: BlocBuilder<HistoryCubit, HistoryState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          _controller = ScrollController()
            ..addListener(() => loadMore(context));
          return SafeArea(
            child: Scaffold(body: _body()),
          );
        },
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<HistoryCubit, HistoryState>(
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
                    assetName: Assets.images.history.path,
                    size: 120,
                  ),
                  Text(
                    S.text.history_title,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                        Expanded(
                          child: Text(
                            S.text.history_subTitle,
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapH20,
                ])),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: Sizes.p8),
                            child: HistoryItem(
                              booking: state.list[index],
                            ),
                          ),
                      childCount: state.list.length),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  BlocBuilder<HistoryCubit, HistoryState>(
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
}
