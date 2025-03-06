import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../bloc/lesson/lesson_bloc.dart';
import '../../data/models/response/lesson_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/courses/courses_bloc.dart';
import '../widgets/courses_card.dart';
import 'detail_courses_page.dart';

class CoursesPage extends StatefulWidget {
  final int idClass;
  final int? idCourses;
  const CoursesPage({super.key, required this.idClass, this.idCourses});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  void initState() {
    super.initState();
    context.read<CoursesBloc>().add(CoursesEvent.getCourses(widget.idClass));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<CoursesBloc>()
              .add(CoursesEvent.getCourses(widget.idClass));
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              BlocBuilder<CoursesBloc, CoursesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => Shimmer(
                      child: Container(
                        height: 110,
                        width: 353.5,
                        decoration: BoxDecoration(
                          color: AppColors.shimer,
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                    error: (message) {
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            context
                                .read<CoursesBloc>()
                                .add(CoursesEvent.getCourses(widget.idClass));
                          },
                          child: ErrorCard(
                            message: message,
                          ),
                        ),
                      );
                    },
                    getCoursesSuccess: (coursesResponseModel) {
                      final courses = coursesResponseModel.data;
                      if (widget.idCourses != null) {
                        context.read<LessonBloc>().add(
                              LessonEvent.getLesson(widget.idCourses!),
                            );
                      } else {
                        context
                            .read<LessonBloc>()
                            .add(LessonEvent.getLesson(courses[0].id));
                      }

                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: courses.map((course) {
                            return Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.read<LessonBloc>().add(
                                          LessonEvent.getLesson(course.id),
                                        );
                                  },
                                  child: CoursesCard(
                                    length: courses.length,
                                    color: AppColors.pink,
                                    icon: course.image,
                                    title: course.title,
                                  ),
                                ),
                                const SpaceWidth(10),
                              ],
                            );
                          }).toList(),
                        ),
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20),
              BlocBuilder<LessonBloc, LessonState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () {
                      return Column(
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
                          const SpaceHeight(10),
                          Shimmer(
                            child: Container(
                              height: 460,
                              decoration: BoxDecoration(
                                color: AppColors.shimer,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    error: (message) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            context
                                .read<LessonBloc>()
                                .add(LessonEvent.getLesson(widget.idCourses!));
                          },
                          child: ErrorCard(
                            message: message,
                          ),
                        ),
                      );
                    },
                    getLessonSuccess: (lessonResponseModel) {
                      final sections = lessonResponseModel.data[0].sections;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildTitleCourses(lessonResponseModel),
                          const SizedBox(height: 10),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: sections.length,
                            itemBuilder: (context, index) {
                              final section = sections[index];
                              final articles = section.articles;
                              return _buildArticle(section, articles, context,
                                  lessonResponseModel);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTitleCourses(LessonResponseModel lessonResponseModel) {
    return Container(
      margin: const EdgeInsets.only(left: 3, right: 3),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          lessonResponseModel.data[0].title,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  SizedBox _buildArticle(Section section, List<Article> articles,
      BuildContext context, LessonResponseModel lessonResponseModel) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                section.name,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
            Column(
              children: List.generate(
                articles.length,
                (articleIndex) {
                  final article = articles[articleIndex];

                  return ListTile(
                    leading: article.completed
                        ? SvgPicture.asset(
                            'assets/icons/icon_checkist2.svg',
                            width: 18,
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            radius: 9,
                          ),
                    title: TextButton(
                      onPressed: () {
                        context.push(
                          DetailCoursesPage(
                            idCourses: lessonResponseModel.data[0].id,
                            idArticle: article.id,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        overlayColor: Colors.transparent,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          article.title,
                          style: const TextStyle(
                            fontSize: 15,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
