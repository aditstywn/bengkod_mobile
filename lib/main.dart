import 'features/class/presentation/bloc/instructor/instructor_bloc.dart';
import 'features/class/presentation/bloc/student/student_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/app_color.dart';
import 'features/auth/data/datasource/auth_remote_datasource.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/splash_page.dart';
import 'features/class/data/datasource/class_remote_datasource.dart';
import 'features/class/presentation/bloc/class/class_bloc.dart';
import 'features/class/presentation/bloc/information/information_bloc.dart';
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
