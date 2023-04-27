import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/specialties.dart';
import '../../widgets/widget.dart';
import 'cubit/tutors_cubit.dart';

class TutorsScreen extends StatefulWidget {
  const TutorsScreen({super.key});

  @override
  State<TutorsScreen> createState() => _TutorsScreenState();
}

class _TutorsScreenState extends State<TutorsScreen> {
  late ScrollController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void loadMore(BuildContext context) {
    final state = context.read<TutorsCubit>().state;
    if (state.hasNextPage &&
        !state.handle.isLoading &&
        _controller.position.extentAfter < 300) {
      context.read<TutorsCubit>().getList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TutorsCubit(),
      child: BlocBuilder<TutorsCubit, TutorsState>(
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
        body: BlocBuilder<TutorsCubit, TutorsState>(
          buildWhen: (previous, current) => previous.tutors != current.tutors,
          builder: (context, state) {
            return CustomScrollView(
              controller: _controller,
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  headHomeWidget(context),
                  filterWidget(context),
                ])),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Sizes.p20),
                            child: TutorItem(item: state.tutors[index]),
                          ),
                      childCount: state.tutors.length),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  BlocBuilder<TutorsCubit, TutorsState>(
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
            );
          },
        ),
      ),
    );
  }

  Widget filterWidget(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: Sizes.p32, vertical: Sizes.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find a Tutor",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
          gapH12,
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: BlocBuilder<TutorsCubit, TutorsState>(
                    buildWhen: (previous, current) =>
                        previous.nameTutor != current.nameTutor,
                    builder: (context, state) {
                      return TextFieldCustom(
                        hint: "Enter tutor name",
                        text: state.nameTutor,
                        onEditingComplete:
                            context.read<TutorsCubit>().onSubmitSearch,
                        onChange: context.read<TutorsCubit>().onChangeNameTutor,
                      );
                    },
                  )),
              gapW4,
              Expanded(child: TextFieldCustom(hint: "Select tutor nationality"))
            ],
          ),
          // gapH8,
          // Text(
          //   "Select available tutoring time:",
          //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          // ),
          // Wrap(
          //   spacing: Sizes.p4,
          //   runSpacing: Sizes.p8,
          //   children: [
          //     SizedBox(
          //       width: 150,
          //       child: TextFieldCustom(
          //         hint: "Select a day",
          //       ),
          //     ),
          //     SizedBox(
          //       width: 250,
          //       child: TextFieldCustom(
          //         hint: "Start time -> End time",
          //       ),
          //     ),
          //   ],
          // ),
          gapH12,
          BlocBuilder<TutorsCubit, TutorsState>(
            buildWhen: (previous, current) =>
                previous.specialties != current.specialties,
            builder: (context, state) {
              return WrapListWidget(
                list: specialties_data,
                color: Colors.grey[700],
                isSelected: true,
                onPress: context.read<TutorsCubit>().onChangeSpecialties,
                select: state.specialties,
              );
            },
          ),
          gapH12,
        ],
      ),
    );
  }

  Widget headHomeWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Sizes.p8),
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          gapH16,
          Text(
            "Upcoming lesson",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          gapH4,
          Text(
            "Sat 11 Mar 23 22:00 - 22:25",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          gapH8,
          GestureDetector(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p20, vertical: Sizes.p4),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgWidget(
                    assetName: Assets.images.icTivi.path,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  gapW8,
                  Text(
                    "Enter your room",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          gapH8,
          Text("Total lesson time is 300 hours 25 minutes",
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
