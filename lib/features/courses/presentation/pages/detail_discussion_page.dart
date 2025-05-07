// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bengkod_mobile_app/core/components/custom_pagination.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/request/add_reply_request_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../bloc/detail_discussions/detail_discussions_bloc.dart';
import '../bloc/discussions/discussions_bloc.dart';
import '../bloc/reply/reply_bloc.dart';
import '../widgets/reply_card.dart';
import '../widgets/reply_loading.dart';

class DetailDiscussionPage extends StatefulWidget {
  final int? idCourses;
  final int? idDiscussion;
  final int idArticle;
  const DetailDiscussionPage({
    Key? key,
    this.idCourses,
    this.idDiscussion,
    required this.idArticle,
  }) : super(key: key);

  @override
  State<DetailDiscussionPage> createState() => _DetailDiscussionPageState();
}

class _DetailDiscussionPageState extends State<DetailDiscussionPage> {
  final TextEditingController _replyController = TextEditingController();
  final TextEditingController _editReplyController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  int page = 1;
  int comment = 0;

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
    context.read<DetailDiscussionsBloc>().add(
          DetailDiscussionsEvent.detailDiscussion(
              widget.idCourses ?? 0, widget.idDiscussion ?? 0),
        );
    context.read<ReplyBloc>().add(
          ReplyEvent.allReply(
              widget.idCourses ?? 0, widget.idDiscussion ?? 0, 1),
        );
  }

  @override
  void dispose() {
    _replyController.dispose();
    _editReplyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        comment = 0;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Diskusi'),
        ),
        body: BlocBuilder<DetailDiscussionsBloc, DetailDiscussionsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => SizedBox(),
              loading: () => Container(
                padding: const EdgeInsets.all(16.0),
                child: Shimmer(
                  child: Container(
                    height: context.deviceHeight,
                    decoration: BoxDecoration(
                      color: AppColors.shimer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              error: (message) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context.read<DetailDiscussionsBloc>().add(
                            DetailDiscussionsEvent.detailDiscussion(
                                widget.idCourses ?? 0,
                                widget.idDiscussion ?? 0),
                          );
                    },
                    child: ErrorCard(
                      message: message,
                    ),
                  ),
                );
              },
              detailDiscussionSuccess: (discussion) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<DetailDiscussionsBloc>().add(
                          DetailDiscussionsEvent.detailDiscussion(
                              widget.idCourses ?? 0, widget.idDiscussion ?? 0),
                        );
                    context.read<ReplyBloc>().add(
                          ReplyEvent.allReply(widget.idCourses ?? 0,
                              widget.idDiscussion ?? 0, page),
                        );
                  },
                  child: ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      Container(
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.greyMuda,
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          discussion.data?.student?.image ??
                                              '-',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        discussion.data?.student?.name ?? '-',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.black,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        'Mahasiswa',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SpaceHeight(10),
                            Text(
                              discussion.data?.title ?? '-',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SpaceHeight(6),
                            Text(
                              discussion.data?.comment ?? '-',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SpaceHeight(20),
                            if (discussion.data?.images?.isNotEmpty == true)
                              ListView.separated(
                                itemCount: discussion.data?.images?.length ?? 0,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      showZoomImagePopup(
                                        context,
                                        discussion.data?.images?[index] ?? '',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                AppColors.grey.withAlpha(100),
                                            blurRadius: 5,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              discussion.data?.images?[index] ??
                                                  '',
                                          fit: BoxFit.cover,
                                          // height: 200,
                                          alignment: Alignment.topCenter,
                                          placeholder: (context, url) =>
                                              Shimmer(
                                            child: Container(
                                              height: 200,
                                              decoration: BoxDecoration(
                                                  color: AppColors.shimer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SpaceHeight(20),
                              ),
                            SpaceHeight(10),
                            Text(
                              discussion.data?.createdAt != null
                                  ? DateFormat('dd MMM yyyy HH:mm')
                                      .format(discussion.data!.createdAt!)
                                  : '-',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.grey,
                              ),
                            ),
                            Divider(
                              color: AppColors.greyMuda,
                              thickness: 1,
                              height: 30,
                            ),
                            SpaceHeight(10),
                            Form(
                              key: _keyForm,
                              child: TextFormField(
                                controller: _replyController,
                                maxLines: 3,
                                decoration: InputDecoration(
                                  hintText: 'Tulis komentar...',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.grey,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: AppColors.greyMuda,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: AppColors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: AppColors.greyMuda.withAlpha(60),
                                ),
                                validator: (value) => value!.isEmpty
                                    ? 'Komentar tidak boleh kosong'
                                    : null,
                              ),
                            ),
                            SpaceHeight(10),
                            BlocConsumer<ReplyBloc, ReplyState>(
                              listener: (context, state) {
                                state.maybeWhen(
                                  orElse: () {},
                                  addReplySuccess: (reply) {
                                    context.read<ReplyBloc>().add(
                                          ReplyEvent.allReply(
                                              widget.idCourses ?? 0,
                                              widget.idDiscussion ?? 0,
                                              page),
                                        );
                                    context.read<DiscussionsBloc>().add(
                                          DiscussionsEvent.discussion(
                                              widget.idCourses ?? 0,
                                              1,
                                              null,
                                              widget.idArticle,
                                              null),
                                        );
                                  },
                                  error: (message) {
                                    context.showAlert(false, message);
                                  },
                                );
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return Align(
                                      alignment: Alignment.centerRight,
                                      child: Button.filled(
                                        onPressed: () {
                                          final reply = AddReplyRequestModel(
                                            commentReply: _replyController.text,
                                          );
                                          if (_keyForm.currentState!
                                              .validate()) {
                                            context.read<ReplyBloc>().add(
                                                  ReplyEvent.addReply(
                                                    widget.idCourses ?? 0,
                                                    widget.idDiscussion ?? 0,
                                                    reply,
                                                  ),
                                                );
                                            _replyController.clear();
                                          }
                                        },
                                        label: 'Kirim',
                                        height: 30,
                                        width: 80,
                                        fontSize: 12,
                                        borderRadius: 6,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            SpaceHeight(10),
                            BlocConsumer<ReplyBloc, ReplyState>(
                              listener: (context, state) {
                                state.maybeWhen(
                                  orElse: () {},
                                  deleteReplySuccess: (delet) {
                                    context.read<ReplyBloc>().add(
                                          ReplyEvent.allReply(
                                              widget.idCourses ?? 0,
                                              widget.idDiscussion ?? 0,
                                              page),
                                        );

                                    context.showAlert(
                                        true, 'Berhasil menghapus komentar');
                                  },
                                  updateReplySuccess: (update) {
                                    context.read<ReplyBloc>().add(
                                          ReplyEvent.allReply(
                                              widget.idCourses ?? 0,
                                              widget.idDiscussion ?? 0,
                                              page),
                                        );
                                    context.showAlert(
                                        true, 'Berhasil mengedit komentar');
                                  },
                                );
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () => const SizedBox(),
                                  loading: () => ReplyLoading(),
                                  error: (message) {
                                    context.read<ReplyBloc>().add(
                                          ReplyEvent.allReply(
                                              widget.idCourses ?? 0,
                                              widget.idDiscussion ?? 0,
                                              1),
                                        );
                                    return Text(
                                      message,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.red,
                                      ),
                                    );
                                  },
                                  allReplySuccess: (allReply) {
                                    comment = allReply.pagination?.total ?? 0;
                                    if (allReply.data?.isEmpty ?? true) {
                                      return const Center(
                                        child: Text(
                                          'Belum ada komentar',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                      );
                                    }
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Komentar',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.black,
                                              ),
                                            ),
                                            Text(
                                              '${comment} Komentar',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SpaceHeight(10),
                                        ListView.separated(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: allReply.data?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            return ReplyCard(
                                                allReply: allReply.data?[index],
                                                idUser: idUser,
                                                editReplyController:
                                                    _editReplyController,
                                                widget: widget);
                                          },
                                          separatorBuilder: (context, index) =>
                                              SpaceHeight(20),
                                        ),
                                        if ((allReply.pagination?.totalPages ??
                                                0) >
                                            1)
                                          CustomPagination(
                                            currentPage: page,
                                            totalPages: allReply
                                                    .pagination?.totalPages ??
                                                1,
                                            onPageChanged: (pages) {
                                              setState(() {
                                                page = pages;
                                              });
                                              context.read<ReplyBloc>().add(
                                                    ReplyEvent.allReply(
                                                      widget.idCourses ?? 0,
                                                      widget.idDiscussion ?? 0,
                                                      pages,
                                                    ),
                                                  );
                                            },
                                          )
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
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
