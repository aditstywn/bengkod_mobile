import 'package:bengkod_mobile_app/features/courses/data/models/response/discussions/dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/models/request/feedback_request_model.dart';
import '../../data/models/response/lesson_response_model.dart';
import '../bloc/courses/courses_bloc.dart';
import '../bloc/feedback/feedback_bloc.dart';
import '../bloc/lesson/lesson_bloc.dart';
import '../widgets/courses_card.dart';
import 'detail_courses_page.dart';
import 'discussion_forum_page.dart';
import 'quiz_dashboard.dart';

class CoursesPage extends StatefulWidget {
  final int idClass;
  final int? idCourses;
  const CoursesPage({super.key, required this.idClass, this.idCourses});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final ScrollController _scrollController = ScrollController();
  int selectedRating = 0;
  TextEditingController feedbackController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  int? coursesId;

  List<DropdownItem>? dropdownArticles;

  @override
  void initState() {
    super.initState();
    context.read<CoursesBloc>().add(CoursesEvent.getCourses(widget.idClass));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kursus'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<CoursesBloc>()
              .add(CoursesEvent.getCourses(widget.idClass));
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 80,
          ),
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
                      return RefreshIndicator(
                        onRefresh: () async {
                          context
                              .read<CoursesBloc>()
                              .add(CoursesEvent.getCourses(widget.idClass));
                        },
                        child: ErrorCard(
                          message: message,
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

                      return ScrollbarTheme(
                        data: ScrollbarThemeData(
                          thumbColor:
                              WidgetStateProperty.all(AppColors.primary),
                          thickness: WidgetStateProperty.all(4),
                          radius: Radius.circular(10),
                        ),
                        child: Scrollbar(
                          controller: _scrollController,
                          thumbVisibility: true,
                          trackVisibility: true,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 35),
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: courses.map((course) {
                                  return Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          coursesId = course.id;
                                          context.read<LessonBloc>().add(
                                                LessonEvent.getLesson(
                                                    course.id),
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
                            ),
                          ),
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

                      // Ambil semua articles dari semua sections
                      final allArticles = sections
                          .expand((section) => section.articles)
                          .toList();

                      // Mapping ke DropdownItem
                      dropdownArticles = allArticles.map((article) {
                        return DropdownItem(
                          id: article.id,
                          title: article.title,
                        );
                      }).toList();

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
                          GestureDetector(
                            onTap: () {
                              context.push(QuizDashboard(
                                idCourse:
                                    coursesId ?? lessonResponseModel.data[0].id,
                              ));
                            },
                            child: Card(
                              color: AppColors.white,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(14),
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.my_library_books_outlined,
                                      color: AppColors.primary,
                                      size: 30,
                                    ),
                                    SpaceWidth(22),
                                    Text(
                                      'Ujian Akhir',
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SpaceHeight(10),
                          BlocListener<FeedbackBloc, FeedbackState>(
                            listener: (context, state) {
                              state.maybeWhen(
                                orElse: () => const SizedBox(),
                                error: (message) {
                                  if (message ==
                                      'Certificate not found for this course.') {
                                    Feedback(context, lessonResponseModel);
                                    return;
                                  }
                                  context.pop();
                                  context.showAlert(false, message);
                                },
                                feedbackSuccess: (feedback, certif) {
                                  context.pop();
                                  context.showAlert(
                                      true,
                                      feedback.meta?.message ??
                                          'Feedback berhasil dikirim');
                                },
                                getCertificateSuccess: (certificate) {
                                  if (certificate.data?.certificateUrl !=
                                      null) {
                                    context.showAlertFile(
                                        'Sertifikat',
                                        certificate.data?.certificateUrl ?? '',
                                        true);
                                    return;
                                  } else {
                                    Feedback(context, lessonResponseModel);
                                  }
                                },
                              );
                            },
                            child: GestureDetector(
                              onTap: () {
                                context.read<FeedbackBloc>().add(
                                    FeedbackEvent.getCertificate(
                                        lessonResponseModel.data[0].id));
                              },
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(14),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(
                                      color: AppColors.primary,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Dapatkan Sertifikat',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SpaceHeight(25),
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
      floatingActionButton: BlocBuilder<CoursesBloc, CoursesState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () {
              return FloatingActionButton(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.forum_rounded,
                  size: 30,
                  color: AppColors.white,
                ),
                onPressed: () {},
              );
            },
            getCoursesSuccess: (coursesResponseModel) {
              if (coursesResponseModel.data.isEmpty) {
                return const SizedBox();
              }
              return FloatingActionButton(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.forum_rounded,
                  size: 30,
                  color: AppColors.white,
                ),
                onPressed: () {
                  context.push(DiscussionForumPage(
                    idCourse: coursesId ?? coursesResponseModel.data[0].id,
                    dropdownArticles: dropdownArticles ?? [],
                  ));
                },
              );
            },
          );
        },
      ),
    );
  }

  Future<dynamic> Feedback(
      BuildContext context, LessonResponseModel lessonResponseModel) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppColors.white,
          title: const Text(
            'Kirim Feedback',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          content: StatefulBuilder(
            builder: (context, setState) {
              return SizedBox(
                width: context.deviceWidth * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Berikan rating:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        return IconButton(
                          icon: Icon(
                            index < selectedRating
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              selectedRating = index + 1;
                            });
                          },
                        );
                      }),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Komentar:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Form(
                      key: _keyForm,
                      child: TextFormField(
                        controller: feedbackController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Tulis komentar Anda...',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Komentar tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
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
            BlocBuilder<FeedbackBloc, FeedbackState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: const CircularProgressIndicator(
                            color: AppColors.white,
                            strokeWidth: 2,
                          ),
                        ));
                  },
                  orElse: () {
                    return TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        if (_keyForm.currentState!.validate()) {
                          final feedback = FeedbackRequestModel(
                            rating: selectedRating,
                            comment: feedbackController.text,
                          );

                          selectedRating = 0;
                          feedbackController.clear();

                          context
                              .read<FeedbackBloc>()
                              .add(FeedbackEvent.feedback(
                                feedback,
                                lessonResponseModel.data[0].id,
                              ));
                        }
                      },
                      child: const Text(
                        'Kirim',
                        style: TextStyle(
                          color: AppColors.white,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        );
      },
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
                            dropdownArticles: dropdownArticles ?? [],
                            idClass: widget.idClass,
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
