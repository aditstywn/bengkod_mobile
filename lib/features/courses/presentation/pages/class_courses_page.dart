import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../class/presentation/bloc/class/class_bloc.dart';
import 'courses_page.dart';

class ClassCoursesPage extends StatefulWidget {
  const ClassCoursesPage({super.key});

  @override
  State<ClassCoursesPage> createState() => _ClassCoursesPageState();
}

class _ClassCoursesPageState extends State<ClassCoursesPage> {
  int? length;

  @override
  void initState() {
    super.initState();
    context.read<ClassBloc>().add(const ClassEvent.getClass());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Path'),
      ),
      body: BlocBuilder<ClassBloc, ClassState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                itemCount: length ?? 2,
                itemBuilder: (context, index) {
                  return Shimmer(
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: AppColors.shimer,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SpaceHeight(16);
                },
              );
            },
            error: (message) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<ClassBloc>().add(const ClassEvent.getClass());
                  },
                  child: ErrorCard(
                    message: message,
                  ),
                ),
              );
            },
            getClassSuccess: (classResponseModel) {
              if (classResponseModel.data?.isEmpty == true) {
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
                        'Anda belum memiliki Kursus',
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

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ClassBloc>().add(const ClassEvent.getClass());
                },
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  itemCount: classResponseModel.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    if (classResponseModel.data?[index].numberOfCourse == 0) {
                      return const SizedBox();
                    }
                    return GestureDetector(
                      onTap: (classResponseModel.data?[index].numberOfCourse ??
                                  0) >
                              0
                          ? () {
                              context.push(CoursesPage(
                                idClass:
                                    classResponseModel.data?[index].id ?? 0,
                              ));
                            }
                          : null,
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
                                    classResponseModel.data?[index].name ?? '-',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.white,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        classResponseModel
                                                .data?[index].numberOfCourse
                                                .toString() ??
                                            '0',
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
                ),
              );
            },
          );
        },
      ),
    );
  }
}
