import 'package:bengkod_mobile_app/features/certificate/presentation/bloc/certificate_bloc.dart';

import 'core/style/theme/bengkod_theme.dart';
import 'features/auth/presentation/bloc/google/google_bloc.dart';
import 'features/certificate/data/datasource/certificate_remote_datasource.dart';
import 'features/class/presentation/bloc/grades/grades_bloc.dart';
import 'features/courses/presentation/bloc/answer/answer_bloc.dart';
import 'features/courses/presentation/bloc/discussions/discussions_bloc.dart';
import 'features/courses/presentation/bloc/exams/exams_bloc.dart';
import 'features/courses/presentation/bloc/feedback/feedback_bloc.dart';
import 'features/courses/presentation/bloc/reply/reply_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/assignment/data/datasource/assignment_remote_datasource.dart';
import 'features/assignment/presentation/bloc/assignment/assignment_bloc.dart';
import 'features/assignment/presentation/bloc/classAndAssigment/class_and_assignment_bloc.dart';
import 'features/assignment/presentation/bloc/classAssignment/class_assignment_bloc.dart';
import 'features/assignment/presentation/bloc/detailAssignment/detail_assignment_bloc.dart';
import 'features/assignment/presentation/bloc/submit/submit_bloc.dart';
import 'features/assignment/presentation/bloc/task/task_bloc.dart';
import 'features/auth/data/datasource/auth_remote_datasource.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'features/auth/presentation/pages/splash_page.dart';
import 'features/class/data/datasource/class_remote_datasource.dart';
import 'features/class/presentation/bloc/class/class_bloc.dart';
import 'features/class/presentation/bloc/information/information_bloc.dart';
import 'features/class/presentation/bloc/instructor/instructor_bloc.dart';
import 'features/class/presentation/bloc/student/student_bloc.dart';
import 'features/courses/data/datasource/courses_remote_datasource.dart';
import 'features/courses/data/datasource/discussion_remote_datasource.dart';
import 'features/courses/presentation/bloc/article/article_bloc.dart';
import 'features/courses/presentation/bloc/courses/courses_bloc.dart';
import 'features/courses/presentation/bloc/detail_discussions/detail_discussions_bloc.dart';
import 'features/courses/presentation/bloc/iformation_exams/information_exams_bloc.dart';
import 'features/courses/presentation/bloc/lesson/lesson_bloc.dart';
import 'features/courses/presentation/bloc/start_exams/start_exams_bloc.dart';
import 'features/home/data/datasorce/home_remote_datasource.dart';
import 'features/home/presentation/bloc/active_course/active_course_bloc.dart';
import 'features/home/presentation/bloc/latest_assignment/latest_assignment_bloc.dart';
import 'features/presence/data/datasource/presence_remote_datasource.dart';
import 'features/presence/presentation/bloc/absence/absence_bloc.dart';
import 'features/presence/presentation/bloc/presences/presences_bloc.dart';
import 'features/presence/presentation/bloc/scanQr/scan_qr_bloc.dart';
import 'features/profile/data/datasource/profile_remote_datasorce.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';
import 'features/settings/data/datasource/settings_remote_datasource.dart';
import 'features/settings/presentation/bloc/settings_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AuthRemoteDatasource()),
        RepositoryProvider(create: (context) => ProfileRemoteDatasorce()),
        RepositoryProvider(create: (context) => SettingsRemoteDatasource()),
        RepositoryProvider(create: (context) => HomeRemoteDatasource()),
        RepositoryProvider(create: (context) => ClassRemoteDatasource()),
        RepositoryProvider(create: (context) => AssignmentRemoteDatasource()),
        RepositoryProvider(create: (context) => CoursesRemoteDatasource()),
        RepositoryProvider(create: (context) => PresenceRemoteDatasource()),
        RepositoryProvider(create: (context) => DiscussionRemoteDatasource()),
        RepositoryProvider(create: (context) => CertificateRemoteDatasource()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(context.read<AuthRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                GoogleBloc(context.read<AuthRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ProfileBloc(context.read<ProfileRemoteDatasorce>()),
          ),
          BlocProvider(
            create: (context) =>
                ClassBloc(context.read<ClassRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                GradesBloc(context.read<ClassRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                InformationBloc(context.read<ClassRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                InstructorBloc(context.read<ClassRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                StudentBloc(context.read<ClassRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                AssignmentBloc(context.read<AssignmentRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ClassAssignmentBloc(context.read<AssignmentRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) => DetailAssignmentBloc(
                context.read<AssignmentRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                TaskBloc(context.read<AssignmentRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SubmitBloc(context.read<AssignmentRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) => ClassAndAssignmentBloc(
                context.read<AssignmentRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                CoursesBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                LessonBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ArticleBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ExamsBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                StartExamsBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                AnswerBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                InformationExamsBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                FeedbackBloc(context.read<CoursesRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                DiscussionsBloc(context.read<DiscussionRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) => DetailDiscussionsBloc(
                context.read<DiscussionRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ReplyBloc(context.read<DiscussionRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                CertificateBloc(context.read<CertificateRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                SettingsBloc(context.read<SettingsRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                LatestAssignmentBloc(context.read<HomeRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ActiveCourseBloc(context.read<HomeRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                PresencesBloc(context.read<PresenceRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                ScanQrBloc(context.read<PresenceRemoteDatasource>()),
          ),
          BlocProvider(
            create: (context) =>
                AbsenceBloc(context.read<PresenceRemoteDatasource>()),
          ),
        ],
        child: MaterialApp(
          title: 'Bengkod',
          theme: BengkodTheme.lightTheme,
          // darkTheme: BengkodTheme.darkTheme,
          themeMode: ThemeMode.system,
          home: const SplashPage(),
        ),
      ),
    );
  }
}
