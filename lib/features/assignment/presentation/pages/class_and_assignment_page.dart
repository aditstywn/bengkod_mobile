// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/extensions/date_time_ext.dart';
import '../bloc/classAndAssigment/class_and_assignment_bloc.dart';
import '../widgets/assignment_card.dart';
import 'detail_assignment_page.dart';

class ClassAndAssignmentPage extends StatefulWidget {
  const ClassAndAssignmentPage({
    super.key,
  });

  @override
  State<ClassAndAssignmentPage> createState() => _ClassAndAssignmentPageState();
}

class _ClassAndAssignmentPageState extends State<ClassAndAssignmentPage> {
  int? length;

  @override
  void initState() {
    super.initState();
    context
        .read<ClassAndAssignmentBloc>()
        .add(const ClassAndAssignmentEvent.getClassAndAssignment());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
      ),
      body: BlocBuilder<ClassAndAssignmentBloc, ClassAndAssignmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                itemCount: length ?? 3,
                itemBuilder: (context, index) {
                  return Shimmer(
                    child: SizedBox(
                      height: 205,
                      child: Card(
                        elevation: 1,
                        color: AppColors.shimer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              );
            },
            error: (message) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<ClassAndAssignmentBloc>().add(
                        const ClassAndAssignmentEvent.getClassAndAssignment());
                  },
                  child: ErrorCard(
                    message: message,
                  ),
                ),
              );
            },
            getClassAndAssignmentSuccess: (assignment) {
              final assignmentResponseModel = assignment;

              if (assignmentResponseModel.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error,
                        size: 80,
                        color: AppColors.grey,
                      ),
                      const SpaceHeight(16),
                      Text(
                        'Anda belum memiliki Tugas',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              }

              length = assignmentResponseModel.length;

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ClassAndAssignmentBloc>().add(
                      const ClassAndAssignmentEvent.getClassAndAssignment());
                },
                child: ListView.separated(
                  itemCount: assignmentResponseModel.length,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  itemBuilder: (context, index) {
                    return AssignmentCard(
                      onTap: () {
                        if (assignmentResponseModel[index]
                            .deadline
                            .isBefore(DateTime.now())) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: AppColors.white,
                              title: const Text(
                                'Tugas Ditutup !!!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              content: const Text(
                                'Tugas ini sudah melewati batas waktu pengumpulan.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: AppColors.primary,
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    'OK',
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          context.push(
                            DetailAssignmentPage(
                              idAssignment: assignmentResponseModel[index].id,
                              idClass: assignmentResponseModel[index].idClass!,
                            ),
                          );
                        }
                      },
                      classTitle: assignmentResponseModel[index].titleClass,
                      title: assignmentResponseModel[index].title,
                      description: assignmentResponseModel[index].description,
                      start: assignmentResponseModel[index]
                          .startTime
                          .toFormattedTime(),
                      deadline: assignmentResponseModel[index]
                          .deadline
                          .toFormattedTime(),
                      status: assignmentResponseModel[index].isUploaded == true
                          ? 'Sudah Dikumpulkan'
                          : assignmentResponseModel[index]
                                  .deadline
                                  .isBefore(DateTime.now())
                              ? 'Telat Dikumpulkan'
                              : 'Belum Dikumpulkan',
                      color: assignmentResponseModel[index].isUploaded == true
                          ? AppColors.assignGreen
                          : AppColors.pink,
                      colorBg: assignmentResponseModel[index].isUploaded == true
                          ? AppColors.assignBgGreen
                          : AppColors.assignBgPink,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
