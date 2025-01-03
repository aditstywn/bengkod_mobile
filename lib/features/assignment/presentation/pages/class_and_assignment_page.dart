import '../../../../core/extensions/build_context_ext.dart';
import '../../../../core/extensions/date_time_ext.dart';
import '../bloc/classAndAssigment/class_and_assignment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/app_color.dart';
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
  @override
  void initState() {
    context
        .read<ClassAndAssignmentBloc>()
        .add(const ClassAndAssignmentEvent.getClassAndAssignment());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Assignment',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () async {
          context
              .read<ClassAndAssignmentBloc>()
              .add(const ClassAndAssignmentEvent.getClassAndAssignment());
        },
        child: BlocBuilder<ClassAndAssignmentBloc, ClassAndAssignmentState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              getClassAndAssignmentSuccess: (assignment) {
                final assignmentResponseModel = assignment;
                return ListView.separated(
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
                );
              },
            );
          },
        ),
      ),
    );
  }
}
