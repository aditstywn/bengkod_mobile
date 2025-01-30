import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../class/presentation/bloc/class/class_bloc.dart';
import '../../../home/presentation/bloc/active_course/active_course_bloc.dart';
import '../../../home/presentation/bloc/latest_assignment/latest_assignment_bloc.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../../data/datasource/auth_remote_datasource.dart';

import '../../../../core/extensions/build_context_ext.dart';
import '../../data/datasource/auth_local_datasource.dart';
import 'login_page.dart';
import '../../../main_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<bool> _checkAuthStatus() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    final tokenExpired = await AuthRemoteDatasource().isTokenExpired();
    final tokenBlacklisted = await AuthRemoteDatasource().isTokenBlacklisted();

    if (isAuth && !tokenExpired && !tokenBlacklisted) {
      await AuthRemoteDatasource().refreshAndSaveToken();
      return true; // jika token masih valid dan user sudah login
    } else {
      await AuthLocalDatasource().removeAuthData();
    }
    return false; // jika token sudah expired atau user belum login
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<LatestAssignmentBloc>()
          .add(const LatestAssignmentEvent.getLatestAssignment());
      context
          .read<ActiveCourseBloc>()
          .add(const ActiveCourseEvent.getActiveCourse());
      context.read<ClassBloc>().add(const ClassEvent.getClass());
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
      loadingScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _checkAuthStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return loadingScreen();
          }
          if (snapshot.hasData && snapshot.data == true) {
            Future.delayed(
              const Duration(seconds: 2),
              () {
                if (context.mounted) {
                  context.pushReplacement(const MainNav());
                }
              },
            );
          } else {
            Future.delayed(
              const Duration(seconds: 2),
              () {
                if (context.mounted) {
                  context.pushReplacement(const LoginPage());
                }
              },
            );
          }
          return loadingScreen();
        },
      ),
    );
  }

  Container loadingScreen() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.secondary,
            AppColors.primary,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: SvgPicture.asset(
              'assets/icons/logo_bengkod.svg',
              height: 250,
            ),
          ),
          const Spacer(),
          const Center(
            child: Text(
              'From',
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          ),
          const SpaceHeight(10.0),
          const Center(
            child: Text(
              'Bengkod Developer',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SpaceHeight(60.0),
        ],
      ),
    );
  }
}
