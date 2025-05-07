import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../data/models/response/reply/all_reply_response_model.dart';
import '../bloc/reply/reply_bloc.dart';
import '../pages/detail_discussion_page.dart';

class ReplyCard extends StatelessWidget {
  final DatumReply? allReply;
  const ReplyCard({
    super.key,
    required this.idUser,
    required TextEditingController editReplyController,
    required this.widget,
    this.allReply,
  }) : _editReplyController = editReplyController;

  final int? idUser;
  final TextEditingController _editReplyController;
  final DetailDiscussionPage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.greyMuda,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: allReply?.user?.image ?? '-',
                  fit: BoxFit.cover,
                  width: 35,
                  height: 35,
                  alignment: Alignment.topCenter,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    size: 15,
                  ),
                ),
              ),
            ),
            SpaceWidth(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    allReply?.user?.name ?? '-',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    allReply?.user?.role?.replaceAll('student', 'Mahasiswa') ??
                        '-',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            if (allReply?.isCreator == 'true') ...[
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Pencipta',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
              ),
              SpaceWidth(10),
            ],
            if (allReply?.user?.id == idUser)
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _editReplyController.text = allReply?.commentReply ?? '-';
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: AppColors.white,
                              title: Text(
                                'Edit Komentar',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                              content: TextFormField(
                                controller: _editReplyController,
                                maxLines: 3,
                                decoration: InputDecoration(
                                  hintText: 'Tulis komentar...',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.grey,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide(
                                      color: AppColors.greyMuda,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide(
                                      color: AppColors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: AppColors.greyMuda.withAlpha(60),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: const Text(
                                    'Batal',
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  onPressed: () {
                                    final idReply = allReply?.id ?? 0;

                                    context.read<ReplyBloc>().add(
                                        ReplyEvent.updateReply(
                                            widget.idCourses ?? 0,
                                            widget.idDiscussion ?? 0,
                                            idReply,
                                            _editReplyController.text));
                                    _editReplyController.clear();
                                    context.pop();
                                  },
                                  child: const Text(
                                    'Simpan',
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ]);
                        },
                      );
                    },
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  SpaceWidth(10),
                  GestureDetector(
                    onTap: () {
                      final idReply = allReply?.id ?? 0;
                      context.read<ReplyBloc>().add(ReplyEvent.deleteReply(
                          widget.idCourses ?? 0,
                          widget.idDiscussion ?? 0,
                          idReply));
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
              )
          ],
        ),
        SpaceHeight(10),
        Text(
          allReply?.commentReply ?? '-',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
          textAlign: TextAlign.justify,
        ),
        SpaceHeight(10),
        Text(
          allReply?.createdAgo ?? '-',
          style: TextStyle(
            fontSize: 10,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
