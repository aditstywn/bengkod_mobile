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
import 'features/class/data/datasource/class_remote_datasource.dart';
import 'features/class/presentation/bloc/class/class_bloc.dart';
import 'features/class/presentation/bloc/information/information_bloc.dart';
import 'features/class/presentation/bloc/instructor/instructor_bloc.dart';
import 'features/class/presentation/bloc/student/student_bloc.dart';
import 'features/courses/data/datasource/courses_remote_datasource.dart';
import 'features/courses/presentation/bloc/article/article_bloc.dart';
import 'features/courses/presentation/bloc/courses/courses_bloc.dart';
import 'features/courses/presentation/bloc/lesson/lesson_bloc.dart';
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

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: _buildRepositoryProviders(),
      child: MultiBlocProvider(
        providers: _buildBlocProviders(),
        child: child,
      ),
    );
  }

  List<RepositoryProvider> _buildRepositoryProviders() {
    return [
      RepositoryProvider(create: (context) => PresenceRemoteDatasource()),
      RepositoryProvider(create: (context) => ClassRemoteDatasource()),
      RepositoryProvider(create: (context) => AssignmentRemoteDatasource()),
      RepositoryProvider(create: (context) => CoursesRemoteDatasource()),
      RepositoryProvider(create: (context) => HomeRemoteDatasource()),
    ];
  }

  List<BlocProvider> _buildBlocProviders() {
    return [
      BlocProvider(create: (context) => AuthBloc(AuthRemoteDatasource())),
      BlocProvider(create: (context) => ProfileBloc(ProfileRemoteDatasorce())),
      BlocProvider(
          create: (context) =>
              ClassBloc(context.read<ClassRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              InformationBloc(context.read<ClassRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              InstructorBloc(context.read<ClassRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              StudentBloc(context.read<ClassRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              AssignmentBloc(context.read<AssignmentRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              ClassAssignmentBloc(context.read<AssignmentRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              DetailAssignmentBloc(context.read<AssignmentRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              TaskBloc(context.read<AssignmentRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              SubmitBloc(context.read<AssignmentRemoteDatasource>())),
      BlocProvider(
          create: (context) => ClassAndAssignmentBloc(
              context.read<AssignmentRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              CoursesBloc(context.read<CoursesRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              LessonBloc(context.read<CoursesRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              ArticleBloc(context.read<CoursesRemoteDatasource>())),
      BlocProvider(
          create: (context) => SettingsBloc(SettingsRemoteDatasource())),
      BlocProvider(
          create: (context) =>
              LatestAssignmentBloc(context.read<HomeRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              ActiveCourseBloc(context.read<HomeRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              PresencesBloc(context.read<PresenceRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              ScanQrBloc(context.read<PresenceRemoteDatasource>())),
      BlocProvider(
          create: (context) =>
              AbsenceBloc(context.read<PresenceRemoteDatasource>())),
    ];
  }
}
