import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../bloc/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // @override
  // void initState() {
  //   context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
          },
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/icon_profile.svg',
                    color: AppColors.primary,
                    width: 24,
                  ),
                  const SpaceWidth(10),
                  const Text(
                    'Profil',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SpaceHeight(30),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.white,
                            width: 5,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 62.5,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.grey[400],
                          ),
                        ),
                      );
                    },
                    loading: () {
                      return Shimmer(
                        child: Container(
                          height: 135,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.shimer,
                          ),
                        ),
                      );
                    },
                    error: (message) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            context
                                .read<ProfileBloc>()
                                .add(const ProfileEvent.getProfile());
                          },
                          child: ErrorCard(
                            message: message,
                          ),
                        ),
                      );
                    },
                    getProfileSuccess: (profileResponseModel) {
                      return Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.white,
                            width: 5,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 62.5,
                          backgroundColor: Colors.grey[200],
                          child: ClipOval(
                            // child: Image.network(
                            //   profileResponseModel.data.image,
                            //   fit: BoxFit.cover,
                            //   width: 125,
                            //   height: 125,
                            //   alignment: Alignment.topCenter,
                            // ),
                            child: CachedNetworkImage(
                              imageUrl: profileResponseModel.data?.image ?? '',
                              fit: BoxFit.cover,
                              width: 125,
                              height: 125,
                              alignment: Alignment.topCenter,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return SizedBox(
                        height: 256,
                        child: Card(
                          color: AppColors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'Gagal mendapatkan data profile',
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    loading: () {
                      return Shimmer(
                        child: SizedBox(
                          height: 256,
                          child: Card(
                            color: AppColors.shimer,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      );
                    },
                    getProfileSuccess: (profileResponseModel) {
                      return Card(
                        color: AppColors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Nomor Induk Mahasiswa',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                profileResponseModel.data?.identityCode ?? '-',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SpaceHeight(8),
                              const Text(
                                'Nama Lengkap Mahasiswa',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                profileResponseModel.data?.name ?? '-',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.fade,
                              ),
                              const SpaceHeight(8),
                              const Text(
                                'Email Mahasiswa',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                profileResponseModel.data?.email ?? '-',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SpaceHeight(8),
                              const Text(
                                'Role',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                profileResponseModel.data?.role ?? '-',
                                style: const TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SpaceHeight(8),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SpaceHeight(20),
              Button.outlined(
                color: Colors.transparent,
                onPressed: () {
                  context.push(const SettingsPage());
                },
                label: 'Pengaturan',
              ),
              const SpaceHeight(10),
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
                            backgroundColor: AppColors.white,
                            title: const Row(
                              children: [
                                Icon(
                                  Icons.error,
                                  color: Colors.red,
                                ),
                                SpaceWidth(8),
                                Text(
                                  'Info Error',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            content: Text(
                              message,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            actions: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'OK',
                                  style: TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
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
                      label: 'Keluar',
                    );
                  }, loading: () {
                    return Button.filled(
                      onPressed: () {},
                      label: 'Loading...',
                      isLoading: true,
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
