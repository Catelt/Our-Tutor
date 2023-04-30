import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/base_style.dart';
import '../../../../constants/countries.dart';
import '../../../../constants/specialties.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../network/model/course/course.dart';
import '../../../../network/model/tutor/tutor.dart';
import '../../../../routing/coordinator.dart';
import 'cubit/tutor_detail_cubit.dart';

class TutorDetailScreen extends StatelessWidget {
  const TutorDetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TutorDetailCubit()..getTutor(id),
      child: BlocConsumer<TutorDetailCubit, TutorDetailState>(
        listenWhen: (previous, current) => previous.handle != current.handle,
        listener: (context, state) {
          if (state.handle.isError) {
            XToast.error(state.handle.message);
          }
        },
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
                : state.tutor.id.isNotEmpty
                    ? _viewTutorDetail(context, state.tutor)
                    : NotFoundWidget(),
          );
        },
      ),
    );
  }

  Widget _viewTutorDetail(BuildContext context, MTutor item) {
    final national = ENational.getNational(item.country ?? "");
    final specialties =
        item.specialties.split(',').map((e) => Specialty.getName(e)).toList();
    final _controller = VideoPlayerController.network(item.video);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 55,
                  foregroundImage:
                      item.avatar != null && item.avatar?.isNotEmpty == true
                          ? CachedNetworkImageProvider(item.avatar!)
                          : null,
                ),
                gapW16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    RatingBarWidget(
                        avgRating: item.rating,
                        numRating: item.feedbacks.length),
                    gapH12,
                    Row(
                      children: [
                        SvgWidget(assetName: national.imageUrl, size: 22),
                        gapW4,
                        Text(
                          national.name,
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            gapH12,
            Text(
              item.bio,
              style: const TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.justify,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Sizes.p20, horizontal: Sizes.p16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<TutorDetailCubit, TutorDetailState>(
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () => context
                            .read<TutorDetailCubit>()
                            .onChangeFavorite(id),
                        child: iconButton(context,
                            asset: item.isFavorite
                                ? Assets.images.icHeartFill.path
                                : Assets.images.icHeart.path,
                            title: S.text.favorite,
                            color: item.isFavorite ? BaseColor.pink : null),
                      );
                    },
                  ),
                  iconButton(context,
                      asset: Assets.images.icReport.path, title: S.text.report),
                  GestureDetector(
                    onTap: () {
                      _controller.pause();
                      XCoordinator().showFeedback(id);
                    },
                    child: iconButton(context,
                        asset: Assets.images.icStar.path,
                        title: S.text.reviews),
                  ),
                ],
              ),
            ),
            Center(
                child: RemoteVideoWidget(
              url: item.video,
              controller: _controller,
            )),
            detailWidget(
                title: S.text.tutor_languages,
                child: WrapListWidget(list: item.languages.split(','))),
            detailWidget(
                title: S.text.tutor_specialties,
                child: WrapListWidget(list: specialties)),
            detailWidget(
              title: S.text.tutor_suggested_courses,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: item.courses.length,
                itemBuilder: (context, index) =>
                    itemCourse(index + 1, item.courses[index]),
              ),
            ),
            detailWidget(
                title: S.text.tutor_interests,
                child: Text(
                  item.interests,
                  style: const TextStyle(fontSize: 14),
                )),
            detailWidget(
                title: S.text.tutor_teaching_experience,
                child: Text(
                  item.experience,
                  style: const TextStyle(fontSize: 14),
                )),
          ],
        ),
      ),
    );
  }

  Widget itemCourse(int index, MCourse course) {
    return GestureDetector(
      onTap: () => XCoordinator().showCourseDetail(course.id, isReplace: true),
      child: Padding(
        padding: EdgeInsets.only(left: Sizes.p4),
        child: Text(
          "$index. ${course.name}",
          style: BaseTextStyle.body3(),
        ),
      ),
    );
  }

  Widget iconButton(BuildContext context,
      {required String title, required String asset, Color? color}) {
    final newColor = color ?? Theme.of(context).colorScheme.primary;
    return Column(
      children: [
        SvgWidget(
          assetName: asset,
          size: 20,
          color: newColor,
        ),
        gapH4,
        Text(
          title,
          style: TextStyle(color: newColor, fontSize: 13),
        )
      ],
    );
  }

  Widget detailWidget({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.p4, horizontal: Sizes.p12),
          child: child,
        ),
        gapH8
      ],
    );
  }
}
