import 'package:bengkod_mobile_app/features/assignment/presentation/bloc/submit/submit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/app_color.dart';
import 'features/assignment/data/datasource/assignment_remote_datasource.dart';
import 'features/assignment/presentation/bloc/assignment/assignment_bloc.dart';
import 'features/assignment/presentation/bloc/classAssignment/class_assignment_bloc.dart';
import 'features/assignment/presentation/bloc/detailAssignment/detail_assignment_bloc.dart';
import 'features/assignment/presentation/bloc/task/task_bloc.dart';
import 'features/auth/data/datasource/auth_remote_datasource.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/splash_page.dart';
import 'features/class/data/datasource/class_remote_datasource.dart';
import 'features/class/presentation/bloc/class/class_bloc.dart';
import 'features/class/presentation/bloc/information/information_bloc.dart';
import 'features/class/presentation/bloc/instructor/instructor_bloc.dart';
import 'features/class/presentation/bloc/student/student_bloc.dart';
import 'features/profile/data/datasource/profile_remote_datasorce.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(ProfileRemoteDatasorce()),
        ),
        BlocProvider(
          create: (context) => ClassBloc(ClassRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => InformationBloc(ClassRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => InstructorBloc(ClassRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => StudentBloc(ClassRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AssignmentBloc(AssignmentRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              ClassAssignmentBloc(AssignmentRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              DetailAssignmentBloc(AssignmentRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => TaskBloc(AssignmentRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SubmitBloc(AssignmentRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          useMaterial3: true,
        ),
        home: const SplashPage(),
      ),
    );
  }
}
