import '../bloc/detail_discussions/detail_discussions_bloc.dart';
import '../bloc/discussions/discussions_bloc.dart';
import '../pages/create_discussion_page.dart';
import '../pages/detail_discussion_page.dart';
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

  bool? isLiked;
  int? numberOfLikes;

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
    isLiked = widget.discussion?.likedByUser;
    numberOfLikes = widget.discussion?.numberOfLikes;
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
              ),
              if (widget.discussion?.pinned?.user != null)
                Icon(
                  Icons.push_pin_rounded,
                  color: AppColors.primary,
                  size: 25,
                ),
            ],
          ),
          SpaceHeight(10),
          // Text(
          //   'Machine Learning',
          //   style: TextStyle(
          //     fontSize: 12,
          //     fontWeight: FontWeight.w400,
          //     color: AppColors.grey,
          //   ),
          // ),
          // SpaceHeight(5),
          Text(
            widget.discussion?.article?.title ?? '-',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFFABABAB),
            ),
          ),
          SpaceHeight(5),
          Text(
            widget.discussion?.title ?? '-',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          SpaceHeight(5),
          Text(
            widget.discussion?.comment ?? '-',
            style: TextStyle(
              fontSize: 12,
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
                return GestureDetector(
                  onTap: () {
                    // context.push(ZoomImage(
                    //     imageUrl: widget.discussion?.images?[index] ?? '-'));
                    showZoomImagePopup(
                      context,
                      widget.discussion?.images?[index] ?? '-',
                    );
                  },
                  child: Container(
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
                  ),
                );
              },
            ),
          Row(
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (isLiked == true) {
                      isLiked = false;
                      numberOfLikes = (numberOfLikes ?? 1) - 1;
                    } else {
                      isLiked = true;
                      numberOfLikes = (numberOfLikes ?? 0) + 1;
                    }
                  });

                  context.read<DetailDiscussionsBloc>().add(
                        DetailDiscussionsEvent.likeDiscussions(
                            widget.discussion?.id ?? 0),
                      );
                },
                child: Row(
                  children: [
                    Icon(
                      isLiked == true
                          ? Icons.thumb_up
                          : Icons.thumb_up_outlined,
                      color: AppColors.primary,
                      size: 16,
                    ),
                    SpaceWidth(4),
                    Text(
                      '${numberOfLikes ?? 0} Suka',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SpaceWidth(10),
              GestureDetector(
                onTap: () {
                  context.push(DetailDiscussionPage(
                    idCourses: widget.discussion?.courseId,
                    idDiscussion: widget.discussion?.id,
                    idArticle: widget.discussion?.article?.articleId ?? 0,
                  ));
                },
                child: Row(
                  children: [
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
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showZoomImagePopup(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.black,
        insetPadding: EdgeInsets.zero,
        child: SizedBox(
          width: context.deviceWidth * 0.95,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: () => context.pop(),
                child: InteractiveViewer(
                  panEnabled: true,
                  minScale: 1,
                  maxScale: 5,
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: -60,
                right: 0,
                left: 0,
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.primary.withAlpha(100),
                    shape: const CircleBorder(),
                  ),
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
