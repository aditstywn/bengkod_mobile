import 'package:bengkod_mobile_app/core/extensions/date_time_ext.dart';

import '../../../../core/extensions/build_context_ext.dart';
import '../bloc/assignment/assignment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/app_color.dart';
import '../widgets/assignment_card.dart';
import 'detail_assignment_page.dart';

class AssignmentPage extends StatefulWidget {
  final int id;
  const AssignmentPage({
    super.key,
    required this.id,
  });

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  @override
  void initState() {
    context
        .read<AssignmentBloc>()
        .add(AssignmentEvent.getAssignment(widget.id));
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
      body: BlocBuilder<AssignmentBloc, AssignmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            getAssignmentSuccess: (assignmentResponseModel) {
              return ListView.separated(
                itemCount: assignmentResponseModel.data.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                itemBuilder: (context, index) {
                  return AssignmentCard(
                    onTap: () {
                      context.push(
                        DetailAssignmentPage(
                          idAssignment: assignmentResponseModel.data[index].id,
                          idClass: widget.id,
                        ),
                      );
                    },
                    title: assignmentResponseModel.data[index].title,
                    description:
                        assignmentResponseModel.data[index].description,
                    start: assignmentResponseModel.data[index].startTime
                        .toFormattedTime(),
                    deadline: assignmentResponseModel.data[index].deadline
                        .toFormattedTime(),
                    status:
                        assignmentResponseModel.data[index].isUploaded == true
                            ? 'Sudah Dikumpulkan'
                            : 'Belum Dikumpulkan',
                    color:
                        assignmentResponseModel.data[index].isUploaded == true
                            ? AppColors.assignGreen
                            : AppColors.pink,
                    colorBg:
                        assignmentResponseModel.data[index].isUploaded == true
                            ? AppColors.assignBgGreen
                            : AppColors.assignBgPink,
                  );
                },
                // children: [
                // AssignmentCard(
                //   onTap: () {
                //     context.push(
                //       const DetailAssignmentPage(
                //         questionFile: true,
                //         uploadFile: true,
                //       ),
                //     );
                //   },
                //   title:
                //       'Studi Kasus Mobile Developer - Ready to Upload Assignment Cobalah untuk membuat aplikasi mobile sederhana dengan menggunakan Flutter',
                //   subtitle: 'Bengkel Koding Mobile - Review',
                //   start: ' 12 Oct 2024. 18.00 ',
                //   deadline: '12 Oct 2024. 18.00 ',
                //   status: 'Sudah Dikumpulkan',
                //   color: AppColors.assignGreen,
                //   colorBg: AppColors.assignBgGreen,
                // ),
                // ],
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
