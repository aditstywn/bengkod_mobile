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
      body: BlocBuilder<ClassAndAssignmentBloc, ClassAndAssignmentState>(
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
                      context.push(
                        DetailAssignmentPage(
                          idAssignment: assignmentResponseModel[index].id,
                          idClass: assignmentResponseModel[index].idClass!,
                        ),
                      );
                    },
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
    );
  }
}
