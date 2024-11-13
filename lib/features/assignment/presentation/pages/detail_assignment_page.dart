import 'dart:io';

import 'package:bengkod_mobile_app/core/extensions/date_time_ext.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/datasource/assignment_remote_datasource.dart';
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
  FilePickerResult? file;
  String _result = 'Upload File';

  @override
  void initState() {
    context.read<DetailAssignmentBloc>().add(
        DetailAssignmentEvent.getDetailAssignment(
            widget.idClass, widget.idAssignment));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Detail Assignment',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
            error: (message) => Center(
              child: Text(message),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            getDetailAssignmentSuccess: (detailAssignmentResponseModel) {
              return ListView(
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
                            'Description',
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
                            'Start : ',
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
                            'Deadline : ',
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
                            'Question File',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SpaceHeight(10),
                          Button.filled(
                            onPressed: () {
                              print(detailAssignmentResponseModel
                                  .data.questionFile);
                            },
                            label: detailAssignmentResponseModel
                                        .data.questionFile !=
                                    null
                                ? 'Click to Download Question File'
                                : 'File Not Available',
                            color: detailAssignmentResponseModel
                                        .data.questionFile !=
                                    null
                                ? null
                                : AppColors.grey,
                          ),
                          const SpaceHeight(20),
                          const Text(
                            'Upload File',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SpaceHeight(10),
                          task == true
                              ? Button.filled(
                                  onPressed: () async {
                                    // String url = detailAssignmentResponseModel
                                    //     .data.tasks[0].answerFile;

                                    AssignmentRemoteDatasource().downloadTask(
                                        'https://api-indoor-duration.natagw.my.id/person-duration/show-labeled-image/?filename=d5d3f0a2ba10e004313a158f447c5ebc.jpg');
                                  },
                                  label: 'Click to Download your File',
                                  color: AppColors.assignGreen,
                                )
                              : Column(
                                  children: [
                                    Button.outlined(
                                      onPressed: () async {
                                        file = await FilePicker.platform
                                            .pickFiles(allowMultiple: false);
                                        setState(() {
                                          // detailAssignmentResponseModel
                                          //         .data
                                          //         .tasks[0]
                                          //         .answerFile
                                          //         .isNotEmpty
                                          //     ? _result =
                                          //         detailAssignmentResponseModel
                                          //             .data.tasks[0].answerFile
                                          //     : _result = file != null
                                          //         ? file!.files
                                          //             .map((element) =>
                                          //                 element.name)
                                          //             .join(", ")
                                          //         : "Upload File";
                                          _result = file != null
                                              ? file!.files
                                                  .map(
                                                      (element) => element.name)
                                                  .join(", ")
                                              : "Upload File";
                                        });
                                      },
                                      icon: SvgPicture.asset(
                                          'assets/icons/icons_fileUpload.svg'),
                                      label: _result,
                                      height: 75,
                                    ),
                                    const SpaceHeight(10),
                                    BlocConsumer<TaskBloc, TaskState>(
                                      listener: (context, state) {
                                        state.maybeWhen(
                                          orElse: () {},
                                          uploadTaskSuccess:
                                              (uploadTaskResponseModel) {
                                            context.pushReplacement(
                                                DetailAssignmentPage(
                                              idClass: widget.idClass,
                                              idAssignment: widget.idAssignment,
                                            ));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                backgroundColor: Colors.green,
                                                content: Text(
                                                  'Upload Success',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          error: (message) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Text(
                                                  message,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          loading: () => const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                          orElse: () {
                                            return Button.filled(
                                              onPressed: () {
                                                final fileTask = File(
                                                    file!.files.single.path!);
                                                final task =
                                                    UploadTaskRequestModel(
                                                        comment: 'Not Comment',
                                                        file: fileTask);
                                                context.read<TaskBloc>().add(
                                                      TaskEvent.uploadTask(
                                                          task,
                                                          widget.idClass,
                                                          widget.idAssignment),
                                                    );
                                              },
                                              label:
                                                  detailAssignmentResponseModel
                                                              .data
                                                              .isUploaded ==
                                                          true
                                                      ? 'Update Assignment'
                                                      : 'Upload Assignment',
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
                                    BlocConsumer<SubmitBloc, SubmitState>(
                                      listener: (context, state) {
                                        state.maybeWhen(
                                          orElse: () {},
                                          submitTaskSuccess:
                                              (submitAssignmentResponseModel) {
                                            context.pushReplacement(
                                                DetailAssignmentPage(
                                              idAssignment: widget.idAssignment,
                                              idClass: widget.idClass,
                                            ));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                backgroundColor: Colors.green,
                                                content: Text(
                                                  'Submit Success',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          error: (message) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Text(
                                                  message,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          loading: () => const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                          orElse: () {
                                            return Button.filled(
                                              onPressed: () {
                                                context.read<SubmitBloc>().add(
                                                    SubmitEvent.submitTask(
                                                        widget.idClass,
                                                        widget.idAssignment));
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
              );
            },
          );
        },
      ),
    );
  }
}
