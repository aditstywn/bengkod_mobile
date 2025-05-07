import 'dart:io';

import '../../../../core/components/custom_text_field.dart';
import '../bloc/classAndAssigment/class_and_assignment_bloc.dart';
import '../widgets/alert_assigment.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/components/url_launcer.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/extensions/date_time_ext.dart';
import '../../data/models/request/upload_task_request_model.dart';
import '../bloc/detailAssignment/detail_assignment_bloc.dart';
import '../bloc/submit/submit_bloc.dart';
import '../bloc/task/task_bloc.dart';

class DetailAssignmentPage extends StatefulWidget {
  final int idClass;
  final int idAssignment;
  const DetailAssignmentPage({
    super.key,
    required this.idClass,
    required this.idAssignment,
  });

  @override
  State<DetailAssignmentPage> createState() => _DetailAssignmentPageState();
}

class _DetailAssignmentPageState extends State<DetailAssignmentPage> {
  final TextEditingController _commentController = TextEditingController();
  FilePickerResult? file;

  @override
  void initState() {
    super.initState();
    context.read<DetailAssignmentBloc>().add(
        DetailAssignmentEvent.getDetailAssignment(
            widget.idClass, widget.idAssignment));
  }

  @override
  void dispose() {
    super.dispose();
    _commentController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Tugas'),
      ),
      body: BlocBuilder<DetailAssignmentBloc, DetailAssignmentState>(
        builder: (context, state) {
          final task = state.maybeWhen(
            orElse: () => null,
            getDetailAssignmentSuccess: (detailAssignmentResponseModel) {
              return detailAssignmentResponseModel.data.tasks.isNotEmpty
                  ? detailAssignmentResponseModel.data.tasks[0].isSubmitted
                  : false;
            },
          );

          return state.maybeWhen(
            orElse: () => const SizedBox(),
            error: (message) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<DetailAssignmentBloc>().add(
                        DetailAssignmentEvent.getDetailAssignment(
                            widget.idClass, widget.idAssignment));
                  },
                  child: ErrorCard(
                    message: message,
                  ),
                ),
              );
            },
            loading: () {
              return ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                children: [
                  Shimmer(
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: AppColors.shimer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SpaceHeight(16),
                  Shimmer(
                    child: Container(
                      height: context.deviceHeight - 200,
                      decoration: BoxDecoration(
                        color: AppColors.shimer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              );
            },
            getDetailAssignmentSuccess: (detailAssignmentResponseModel) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<DetailAssignmentBloc>().add(
                      DetailAssignmentEvent.getDetailAssignment(
                          widget.idClass, widget.idAssignment));
                },
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      height: 65,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          detailAssignmentResponseModel.data.title,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SpaceHeight(16),
                    Card(
                      elevation: 1,
                      color: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Keterangan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SpaceHeight(10),
                            Text(
                              detailAssignmentResponseModel.data.description,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            const SpaceHeight(10),
                            const Text(
                              'Mulai : ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              detailAssignmentResponseModel.data.startTime
                                  .toFormattedTime(),
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SpaceHeight(10),
                            const Text(
                              'Selesai : ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              detailAssignmentResponseModel.data.deadline
                                  .toFormattedTime(),
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SpaceHeight(20),
                            const Text(
                              'File',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SpaceHeight(10),
                            Button.filled(
                              onPressed: () async {
                                final url = detailAssignmentResponseModel
                                    .data.questionFile;
                                final fileExtention = url
                                    .toString()
                                    .split('.')
                                    .last
                                    .toLowerCase();

                                if (url != null) {
                                  if (['pdf'].contains(fileExtention)) {
                                    context.showAlertFile('PDF', url, true);
                                  } else {
                                    context.showAlertFile('Image', url, false);
                                  }
                                }
                              },
                              label: detailAssignmentResponseModel
                                          .data.questionFile !=
                                      null
                                  ? 'Klik Untuk Unduh File'
                                  : 'Tidak Ada File',
                              color: detailAssignmentResponseModel
                                          .data.questionFile !=
                                      null
                                  ? null
                                  : AppColors.grey,
                            ),
                            const SpaceHeight(20),
                            Row(
                              children: [
                                const Text(
                                  'Upload File',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SpaceWidth(10),
                                const Text(
                                  '( PDF, DOC, DOCX, TXT )',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(10),
                            task == true
                                ? Button.filled(
                                    onPressed: () async {
                                      final url = detailAssignmentResponseModel
                                          .data.tasks[0].answerFile;
                                      final fileExtention = url
                                          .toString()
                                          .split('.')
                                          .last
                                          .toLowerCase();

                                      if (['pdf'].contains(fileExtention)) {
                                        context.showAlertFile('PDF', url, true);
                                      } else if (['jpg', 'jpeg', 'png']
                                          .contains(fileExtention)) {
                                        context.showAlertFile(
                                            'Image', url, false);
                                      } else {
                                        UrlLauncer().launchInBrowser(
                                            Uri.parse(url), context);
                                      }
                                    },
                                    label: 'Klik Untuk Download File',
                                    color: AppColors.assignGreen,
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Button.outlined(
                                        onPressed: () async {
                                          file = await FilePicker.platform
                                              .pickFiles(allowMultiple: false);
                                          setState(() {});
                                        },
                                        icon: SvgPicture.asset(
                                            'assets/icons/icons_fileUpload.svg'),
                                        label: 'Upload File',
                                        height: 75,
                                      ),
                                      if (detailAssignmentResponseModel
                                              .data.tasks.isNotEmpty ==
                                          true) ...[
                                        const SpaceHeight(10),
                                        Text(
                                          'File Sebelumnya',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.primary,
                                          ),
                                        ),
                                        SpaceHeight(5),
                                        GestureDetector(
                                          onTap: () {
                                            UrlLauncer().launchInBrowser(
                                                Uri.parse(
                                                    detailAssignmentResponseModel
                                                        .data
                                                        .tasks[0]
                                                        .answerFile),
                                                context);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              color: AppColors.greyMuda
                                                  .withAlpha(70),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              detailAssignmentResponseModel
                                                  .data.tasks[0].answerFile
                                                  .split('/')
                                                  .last,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                      if (file != null) ...[
                                        const SpaceHeight(10),
                                        if (detailAssignmentResponseModel
                                                .data.isUploaded ==
                                            true) ...[
                                          Text(
                                            'File Baru',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.primary,
                                            ),
                                          ),
                                          SpaceHeight(5),
                                        ],
                                        GestureDetector(
                                          onTap: () async {
                                            final path =
                                                file?.files.single.path;
                                            if (path == null) return;
                                            final extension = file
                                                ?.files.single.path
                                                .toString()
                                                .split('.')
                                                .last
                                                .toLowerCase();

                                            if (extension == 'pdf') {
                                              AlertAssigment().fileAlert(
                                                  context, path, 'pdf');
                                            } else if (extension == 'txt') {
                                              final textContent =
                                                  await File(path)
                                                      .readAsString();
                                              AlertAssigment().fileAlert(
                                                  context, textContent, 'txt');
                                            } else if (extension == 'doc' ||
                                                extension == 'docx') {
                                              AlertAssigment().fileAlert(
                                                  context, path, 'docs');
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                    content: Text(
                                                        'Format file tidak dikenali: $extension')),
                                              );
                                            }
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              color: AppColors.greyMuda
                                                  .withAlpha(70),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    file?.files.single.name ??
                                                        'No File',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                const SpaceWidth(20),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      file = null;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.close_rounded,
                                                    color: AppColors.primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                      const SpaceHeight(16),
                                      CustomTextField(
                                        showLabel: false,
                                        controller: _commentController,
                                        label: 'Comment',
                                        hintext: 'Masukan Komentar',
                                        maxLines: 2,
                                      ),
                                      const SpaceHeight(10),
                                      BlocConsumer<TaskBloc, TaskState>(
                                        listener: (context, state) {
                                          state.maybeWhen(
                                            orElse: () {},
                                            uploadTaskSuccess:
                                                (uploadTaskResponseModel) {
                                              context
                                                  .read<
                                                      ClassAndAssignmentBloc>()
                                                  .add(const ClassAndAssignmentEvent
                                                      .getClassAndAssignment());
                                              context.pushReplacement(
                                                  DetailAssignmentPage(
                                                idClass: widget.idClass,
                                                idAssignment:
                                                    widget.idAssignment,
                                              ));
                                              context.showAlert(
                                                  true,
                                                  detailAssignmentResponseModel
                                                          .data.isUploaded
                                                      ? 'Update Tugas Berhasil'
                                                      : 'Upload Tugas Berhasil');
                                            },
                                            error: (message) {
                                              context.showAlert(false, message);
                                            },
                                          );
                                        },
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            loading: () => Button.filled(
                                              onPressed: () {},
                                              label: 'Loading...',
                                              isLoading: true,
                                              color:
                                                  detailAssignmentResponseModel
                                                              .data
                                                              .isUploaded ==
                                                          true
                                                      ? AppColors.course
                                                      : AppColors.assignment,
                                            ),
                                            orElse: () {
                                              return Button.filled(
                                                onPressed: file
                                                            ?.files.isEmpty !=
                                                        true
                                                    ? () {
                                                        final fileTask = File(
                                                            file?.files.single
                                                                    .path ??
                                                                '');

                                                        final task = UploadTaskRequestModel(
                                                            comment:
                                                                _commentController
                                                                        .text
                                                                        .isEmpty
                                                                    ? '-'
                                                                    : _commentController
                                                                        .text,
                                                            file: fileTask);

                                                        //  final fileExtension =
                                                        //     fileTask.path
                                                        //         .split('.')
                                                        //         .last
                                                        //         .toLowerCase();

                                                        if (fileTask
                                                            .path.isNotEmpty) {
                                                          // if (![
                                                          //   'pdf',
                                                          //   'doc',
                                                          //   'docx',
                                                          //   'txt'
                                                          // ].contains(
                                                          //     fileExtension)) {
                                                          //   context.showAlert(
                                                          //       false,
                                                          //       'Jenis File Ini Tidak Diizinkan ');
                                                          //   return;
                                                          // }
                                                          context
                                                              .read<TaskBloc>()
                                                              .add(
                                                                TaskEvent.uploadTask(
                                                                    task,
                                                                    widget
                                                                        .idClass,
                                                                    widget
                                                                        .idAssignment),
                                                              );
                                                        }
                                                      }
                                                    : () {},
                                                label:
                                                    detailAssignmentResponseModel
                                                                .data
                                                                .isUploaded ==
                                                            true
                                                        ? 'Update Tugas'
                                                        : 'Upload Tugas',
                                                color:
                                                    detailAssignmentResponseModel
                                                                .data
                                                                .isUploaded ==
                                                            true
                                                        ? AppColors.course
                                                        : AppColors.assignment,
                                              );
                                            },
                                          );
                                        },
                                      ),
                                      const SpaceHeight(10),
                                      detailAssignmentResponseModel
                                                  .data.isUploaded ==
                                              false
                                          ? SizedBox()
                                          : BlocConsumer<SubmitBloc,
                                              SubmitState>(
                                              listener: (context, state) {
                                                state.maybeWhen(
                                                  orElse: () {},
                                                  submitTaskSuccess:
                                                      (submitAssignmentResponseModel) {
                                                    context.pushReplacement(
                                                        DetailAssignmentPage(
                                                      idAssignment:
                                                          widget.idAssignment,
                                                      idClass: widget.idClass,
                                                    ));

                                                    context.showAlert(true,
                                                        'Submit Tugas Berhasil');
                                                  },
                                                  error: (message) {
                                                    context.showAlert(
                                                        false, message);
                                                  },
                                                );
                                              },
                                              builder: (context, state) {
                                                return state.maybeWhen(
                                                  loading: () => Button.filled(
                                                    onPressed: () {},
                                                    label: 'Loading...',
                                                    isLoading: true,
                                                  ),
                                                  orElse: () {
                                                    return Button.filled(
                                                      onPressed: () {
                                                        context
                                                            .read<SubmitBloc>()
                                                            .add(SubmitEvent
                                                                .submitTask(
                                                                    widget
                                                                        .idClass,
                                                                    widget
                                                                        .idAssignment));
                                                      },
                                                      label: 'Submit',
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                    ],
                                  )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
