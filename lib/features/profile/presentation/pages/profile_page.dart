import 'package:bengkod_mobile_app/core/components/buttons.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon_profile.svg',
                  color: AppColors.primary,
                ),
                const SpaceWidth(10),
                const Text(
                  'Profile',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SpaceHeight(30),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white,
                  width: 5,
                ),
              ),
              child: CircleAvatar(
                radius: 62.5,
                backgroundColor: AppColors.grey,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/DSCF2616.JPG',
                    fit: BoxFit.cover,
                    width: 125,
                    height: 125,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            const SpaceHeight(20),
            Card(
              color: AppColors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nomor Induk Mahasiswa',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'A11.2022.14654',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SpaceHeight(8),
                    Text(
                      'Nama Lengkap Mahasiswa',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Restu Aditya Setyawan',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                    SpaceHeight(8),
                    Text(
                      'Email Mahasiswa',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '111202214654@mhs.dinus.ac.id',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SpaceHeight(8),
                  ],
                ),
              ),
            ),
            const SpaceHeight(20),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  logoutSuccess: (logoutResponseModel) {
                    AuthLocalDatasource().removeAuthData();
                    context.pushReplacement(const LoginPage());
                  },
                  error: (message) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Row(
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.red,
                              ),
                              SpaceWidth(8),
                              Text('Info Error'),
                            ],
                          ),
                          content: Text(message),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return Button.filled(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.logout());
                    },
                    label: 'Logout',
                  );
                }, loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
