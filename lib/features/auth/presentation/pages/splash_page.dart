import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:bengkod_mobile_app/features/auth/presentation/pages/login_page.dart';
import 'package:bengkod_mobile_app/features/main_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: AuthLocalDatasource().isAuth(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
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
          if (snapshot.data == true) {
            Future.delayed(
              const Duration(seconds: 2),
              () => context.pushReplacement(const MainNav()),
            );
          } else {
            Future.delayed(
              const Duration(seconds: 2),
              () => context.pushReplacement(const LoginPage()),
            );
          }
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
        },
      ),
    );
  }
}
