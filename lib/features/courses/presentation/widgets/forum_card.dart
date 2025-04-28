import 'package:bengkod_mobile_app/features/courses/presentation/bloc/discussions/discussions_bloc.dart';
import 'package:bengkod_mobile_app/features/courses/presentation/pages/create_discussion_page.dart';
import 'package:bengkod_mobile_app/features/courses/presentation/pages/detail_discussion_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../../data/models/response/discussions/discussion_response_model.dart';

class ForumCard extends StatefulWidget {
  final DataDiscussions? discussion;
  const ForumCard({
    super.key,
    this.discussion,
  });

  @override
  State<ForumCard> createState() => _ForumCardState();
}

class _ForumCardState extends State<ForumCard> {
  int? idUser;

  void getUser() async {
    final user = await AuthLocalDatasource().getAuthData();
    setState(() {
      idUser = user.data.id;
    });
  }

  @override
  void initState() {
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withAlpha(100),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.discussion?.student?.id == idUser)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    context.push(CreateDiscussionPage(
                      idCourse: widget.discussion?.courseId ?? 0,
                      discussion: widget.discussion,
                    ));
                  },
                  child: Text('Edit',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary,
                      )),
                ),
                SpaceWidth(10),
                GestureDetector(
                  onTap: () {
                    context.read<DiscussionsBloc>().add(
                          DiscussionsEvent.deleteDiscussion(
                            widget.discussion?.courseId ?? 0,
                            widget.discussion?.id ?? 0,
                          ),
                        );
                  },
                  child: Text(
                    'Hapus',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ],
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.greyMuda,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: widget.discussion?.student?.image ?? '',
                    fit: BoxFit.cover,
                    width: 55,
                    height: 55,
                    alignment: Alignment.topCenter,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              SpaceWidth(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.discussion?.student?.name ?? '-',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.discussion?.student?.role
                              ?.replaceAll('student', 'Mahasiswa') ??
                          '-',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SpaceHeight(10),
          Text(
            widget.discussion?.title ?? '-',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            widget.discussion?.comment ?? '-',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          SpaceHeight(20),
          if (widget.discussion?.images?.isNotEmpty == true)
            ListView.builder(
              itemCount: widget.discussion?.images?.length ?? 0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.greyMuda,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withAlpha(100),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: widget.discussion?.images?[index] ?? '-',
                      fit: BoxFit.cover,
                      width: context.deviceWidth,
                      // height: 200,
                      alignment: Alignment.topCenter,
                      placeholder: (context, url) => Shimmer(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: AppColors.shimer,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                );
              },
            ),
          GestureDetector(
            onTap: () {
              context.push(DetailDiscussionPage(
                idCourses: widget.discussion?.courseId,
                idDiscussion: widget.discussion?.id,
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.discussion?.createdAgo ?? '-',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.grey,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.comment_rounded,
                  color: AppColors.primary,
                  size: 16,
                ),
                SpaceWidth(4),
                Text(
                  '${widget.discussion?.numberOfReplies ?? 0} Komentar',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.primary,
                  ),
                ),
                // SpaceWidth(10),
                // Icon(
                //   Icons.thumb_up,
                //   color: AppColors.primary,
                //   size: 16,
                // ),
                // SpaceWidth(4),
                // Text(
                //   '2',
                //   style: TextStyle(
                //     fontSize: 10,
                //     color: AppColors.primary,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
