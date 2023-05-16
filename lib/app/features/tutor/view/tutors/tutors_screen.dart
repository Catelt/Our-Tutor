import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/specialties.dart';
import '../../../../localization/localization_utils.dart';
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
            S.text.tutors_find_tutor,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
          gapH12,
          BlocBuilder<TutorsCubit, TutorsState>(
            buildWhen: (previous, current) =>
                previous.nameTutor != current.nameTutor,
            builder: (context, state) {
              return TextFieldCustom(
                hint: "Enter tutor name",
                text: state.nameTutor,
                onEditingComplete: context.read<TutorsCubit>().onSubmitSearch,
                onChange: context.read<TutorsCubit>().onChangeNameTutor,
              );
            },
          ),
          gapH12,
          BlocBuilder<TutorsCubit, TutorsState>(
            buildWhen: (previous, current) =>
                previous.national != current.national,
            builder: (context, state) {
              return ButtonDropDownCustom(
                selected: state.national,
                hint: "Select tutor nationality",
                onChange: context.read<TutorsCubit>().onChangeNational,
              );
            },
          ),
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
          PrimaryButton(
            text: S.text.common_reset,
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            onPressed: context.read<TutorsCubit>().resetFilter,
          )
        ],
      ),
    );
  }

  Widget headHomeWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Sizes.p8),
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          upComingInfo(),
          BlocBuilder<TutorsCubit, TutorsState>(
            buildWhen: (previous, current) => previous.total != current.total,
            builder: (context, state) {
              final time = state.total;
              return Text(
                  S.text.tutors_total_time((time / 60).floor(), (time % 60)),
                  style: TextStyle(color: Colors.white, fontSize: 16));
            },
          ),
        ],
      ),
    );
  }

  Widget upComingInfo() {
    return BlocBuilder<TutorsCubit, TutorsState>(
      buildWhen: (previous, current) => previous.booking != current.booking,
      builder: (context, state) {
        return UpComingWidget(
          booking: state.booking,
        );
      },
    );
  }
}
