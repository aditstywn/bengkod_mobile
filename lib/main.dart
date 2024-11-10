import 'package:bengkod_mobile_app/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bengkod_mobile_app/features/auth/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(AuthRemoteDatasource()),
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
