import 'package:bengkod_mobile_app/features/auth/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/config/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
