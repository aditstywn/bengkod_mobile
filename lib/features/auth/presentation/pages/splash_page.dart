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

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late Animation<double> _logoScaleAnimation;

  late AnimationController _textAnimationController;
  late Animation<double> _textFadeAnimation;

  Future<bool> _checkAuthStatus() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    final tokenExpired = await AuthRemoteDatasource().isTokenExpired();
    final tokenBlacklisted = await AuthRemoteDatasource().isTokenBlacklisted();

    if (isAuth && !tokenExpired && !tokenBlacklisted) {
      await AuthRemoteDatasource().refreshAndSaveToken();
      return true;
    } else {
      await AuthLocalDatasource().removeAuthData();
    }
    return false;
  }

  @override
  void initState() {
    super.initState();

    // Logo animation
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _logoScaleAnimation = CurvedAnimation(
      parent: _logoAnimationController,
      curve: Curves.easeOutBack,
    );

    // Text animation
    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _textFadeAnimation = CurvedAnimation(
      parent: _textAnimationController,
      curve: Curves.easeIn,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<LatestAssignmentBloc>()
          .add(const LatestAssignmentEvent.getLatestAssignment());
      context
          .read<ActiveCourseBloc>()
          .add(const ActiveCourseEvent.getActiveCourse());
      context.read<ClassBloc>().add(const ClassEvent.getClass());
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());

      _logoAnimationController.forward().whenComplete(() {
        _textAnimationController.forward();
      });
    });
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    _textAnimationController.dispose();
    super.dispose();
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
            Future.delayed(const Duration(seconds: 3), () {
              if (context.mounted) {
                context.pushReplacement(const MainNav());
              }
            });
          } else {
            Future.delayed(const Duration(seconds: 3), () {
              if (context.mounted) {
                context.pushReplacement(const LoginPage());
              }
            });
          }
          return loadingScreen();
        },
      ),
    );
  }

  Widget loadingScreen() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.background,
        // gradient: LinearGradient(
        //   colors: [
        //     Color(0xFF60A3D9),
        //     Color(0xFF1E2A5E),
        //   ],
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          ScaleTransition(
            scale: _logoScaleAnimation,
            child: SvgPicture.asset(
              'assets/icons/logo_bengkod.svg',
              height: 200,
            ),
          ),
          const Spacer(),
          FadeTransition(
            opacity: _textFadeAnimation,
            child: Column(
              children: const [
                Text(
                  'From',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2,
                  ),
                ),
                SpaceHeight(8.0),
                Text(
                  'Bengkod Developer',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(60.0),
        ],
      ),
    );
  }
}
