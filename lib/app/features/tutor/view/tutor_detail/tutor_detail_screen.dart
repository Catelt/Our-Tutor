import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/base_style.dart';
import '../../../../constants/countries.dart';
import '../../../../constants/specialties.dart';
import '../../../../network/model/course/course.dart';
import '../../../../network/model/tutor/tutor.dart';
import 'tutor_detail_cubit.dart';

class TutorDetailScreen extends StatelessWidget {
  const TutorDetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TutorDetailCubit()..getTutor(id),
      child: BlocBuilder<TutorDetailCubit, TutorDetailState>(
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
                    ? _viewTutorDetail(context, state.handle.data ?? MTutor())
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
                  iconButton(context,
                      asset: Assets.images.icHeart.path, title: 'Favorite'),
                  iconButton(context,
                      asset: Assets.images.icReport.path, title: 'Report'),
                  iconButton(context,
                      asset: Assets.images.icStar.path, title: 'Reviews'),
                ],
              ),
            ),
            Center(child: RemoteVideoWidget(url: item.video)),
            detailWidget(
                title: 'Languages',
                child: WrapListWidget(list: item.languages.split(','))),
            detailWidget(
                title: 'Specialties', child: WrapListWidget(list: specialties)),
            detailWidget(
              title: 'Suggested courses',
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: item.courses.length,
                itemBuilder: (context, index) =>
                    itemCourse(index + 1, item.courses[index]),
              ),
            ),
            detailWidget(
                title: 'Interests',
                child: Text(
                  item.interests,
                  style: const TextStyle(fontSize: 14),
                )),
            detailWidget(
                title: 'Teaching experience',
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
    return Padding(
      padding: EdgeInsets.only(left: Sizes.p4),
      child: Text(
        "$index. ${course.name}",
        style: BaseTextStyle.body3(),
      ),
    );
  }

  Widget iconButton(BuildContext context,
      {required String title, required String asset}) {
    return Column(
      children: [
        SvgWidget(
          assetName: asset,
          size: 20,
          color: Theme.of(context).colorScheme.primary,
        ),
        gapH4,
        Text(
          title,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 13),
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
