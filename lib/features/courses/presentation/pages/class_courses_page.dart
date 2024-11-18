import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/courses/presentation/pages/courses_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/config/app_color.dart';
import '../../../assignment/presentation/bloc/classAssignment/class_assignment_bloc.dart';

class ClassCoursesPage extends StatefulWidget {
  const ClassCoursesPage({super.key});

  @override
  State<ClassCoursesPage> createState() => _ClassCoursesPageState();
}

class _ClassCoursesPageState extends State<ClassCoursesPage> {
  @override
  void initState() {
    context
        .read<ClassAssignmentBloc>()
        .add(const ClassAssignmentEvent.getClassAssignment());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Class Courses',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ClassAssignmentBloc, ClassAssignmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            getClassAssignmentSuccess: (classAssignmentResponseModel) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                itemCount: classAssignmentResponseModel.data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.push(CoursesPage(
                        idClass: classAssignmentResponseModel.data[index].id,
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.course,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            width: 90,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  AppColors.courseUngu,
                                  AppColors.courseRed,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/icon_assignment.svg',
                                height: 50,
                                width: 50,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          const SpaceWidth(10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  classAssignmentResponseModel.data[index].name,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SpaceWidth(5),
                                    Text(
                                      'Courses',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SpaceWidth(10),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SpaceHeight(16);
                },
              );
            },
          );
        },
      ),
    );
  }
}
