import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../assignment/presentation/pages/class_and_assignment_page.dart';
import '../../../assignment/presentation/pages/detail_assignment_page.dart';
import '../../../assignment/presentation/widgets/assignment_card.dart';
import '../../../certificate/presentation/pages/certificate_page.dart';
import '../../../class/presentation/pages/class_page.dart';
import '../../../courses/presentation/pages/class_courses_page.dart';
import '../../../courses/presentation/pages/courses_page.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../bloc/active_course/active_course_bloc.dart';
import '../bloc/latest_assignment/latest_assignment_bloc.dart';
import '../widgets/menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    // context
    //     .read<LatestAssignmentBloc>()
    //     .add(const LatestAssignmentEvent.getLatestAssignment());
    // context
    //     .read<ActiveCourseBloc>()
    //     .add(const ActiveCourseEvent.getActiveCourse());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
            context
                .read<LatestAssignmentBloc>()
                .add(const LatestAssignmentEvent.getLatestAssignment());
            context
                .read<ActiveCourseBloc>()
                .add(const ActiveCourseEvent.getActiveCourse());
          },
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/icon_home.svg',
                    color: AppColors.primary,
                    width: 24,
                  ),
                  const SpaceWidth(10),
                  const Text(
                    'Beranda',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SpaceHeight(10),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Container(
                        height: 97,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(14),
                        ),
                      );
                    },
                    loading: () {
                      return Shimmer(
                        child: Container(
                          height: 97,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      );
                    },
                    getProfileSuccess: (profileResponseModel) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 8,
                        ),
                        height: 97,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          gradient: LinearGradient(
                            colors: [
                              AppColors.primary,
                              Color(0xFF212087),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.white,
                                  width: 3,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: AppColors.white,
                                child: ClipOval(
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        profileResponseModel.data?.image ?? '',
                                    fit: BoxFit.cover,
                                    width: 60,
                                    height: 60,
                                    alignment: Alignment.topCenter,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                            const SpaceWidth(20),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    profileResponseModel.data?.name ?? '-',
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  Text(
                                    profileResponseModel.data?.identityCode ??
                                        '-',
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20),
              const Text(
                'Menu Informasi',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SpaceHeight(10),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                  childAspectRatio: 2.3,
                ),
                children: [
                  MenuButton(
                    onTap: () {
                      context.push(const ClassPage());
                    },
                    color: Color(0xFFEF5488),
                    colorScondary: Color(0xFFEF5454),
                    title: 'Kelas',
                    icon: 'assets/icons/kelas.svg',
                  ),
                  MenuButton(
                    onTap: () {
                      context.push(const ClassAndAssignmentPage());
                    },
                    color: Color(0xFFFF7C50),
                    colorScondary: Color(0xFFFF5050),
                    title: 'Tugas',
                    icon: 'assets/icons/assignment.svg',
                  ),
                  MenuButton(
                    onTap: () {
                      context.push(const ClassCoursesPage());
                    },
                    color: Color(0xFF69D4FF),
                    colorScondary: Color(0xFF2E63EA),
                    title: 'Learning Path',
                    icon: 'assets/icons/learning_path.svg',
                  ),
                  MenuButton(
                    onTap: () {
                      context.push(CertificatePage());
                    },
                    color: Color(0xFFAF6AA8),
                    colorScondary: Color(0xFF6B6AAF),
                    title: 'Sertifikat',
                    icon: 'assets/icons/sertifikat.svg',
                  ),
                ],
              ),
              const SpaceHeight(20),
              const Text(
                'Progres Kursus Anda',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SpaceHeight(10),
              BlocBuilder<ActiveCourseBloc, ActiveCourseState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => SizedBox(
                      height: 80,
                      child: Card(
                        elevation: 1,
                        color: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'No Data Active Course',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    loading: () {
                      return ListView.builder(
                        itemCount: 1,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Shimmer(
                            child: SizedBox(
                              height: 80,
                              child: Card(
                                elevation: 1,
                                color: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    getActiveCourseSuccess: (activeCourseResponseModel) {
                      if (activeCourseResponseModel.data!.isEmpty) {
                        return SizedBox(
                          height: 80,
                          child: Card(
                            elevation: 1,
                            color: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Tidak Ada Progress Kursus',
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: activeCourseResponseModel.data!.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final course = activeCourseResponseModel.data![index];
                          return InkWell(
                            onTap: () {
                              context.push(
                                CoursesPage(idClass: course.classroom!.id!),
                              );
                            },
                            child: Card(
                              elevation: 1,
                              color: AppColors.white,
                              child: ListTile(
                                title: Text(
                                  course.title!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  course.description!,
                                  style: const TextStyle(
                                      color: AppColors.grey,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                trailing: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const CircularProgressIndicator(
                                      value: 1.0,
                                      strokeWidth: 4.0,
                                      color: AppColors.greyMuda,
                                    ),
                                    CircularProgressIndicator(
                                      value: (double.parse(
                                              course.courseProgress!) /
                                          100),
                                      strokeWidth: 4.0,
                                      valueColor: const AlwaysStoppedAnimation(
                                          AppColors.green),
                                    ),
                                    Text(
                                      '${course.courseProgress}%',
                                      style: const TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                leading: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: const Offset(2, 4),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: CachedNetworkImage(
                                      imageUrl: course.image!,
                                      fit: BoxFit.cover,
                                      width: 50,
                                      height: 50,
                                      alignment: Alignment.topCenter,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20),
              const Text(
                'Tugas Terbaru',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SpaceHeight(10),
              BlocBuilder<LatestAssignmentBloc, LatestAssignmentState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Tidak Ada Tugas Terbaru',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    loading: () => Shimmer(
                      child: SizedBox(
                        height: 205,
                        child: Card(
                          elevation: 1,
                          color: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    getLatestAssignmentSuccess:
                        (latestAssignmentResponseModel) {
                      return AssignmentCard(
                        onTap: latestAssignmentResponseModel.data?.id != null
                            ? () {
                                context.push(
                                  DetailAssignmentPage(
                                    idAssignment: latestAssignmentResponseModel
                                            .data?.id ??
                                        0,
                                    idClass: latestAssignmentResponseModel
                                            .data?.classroomId ??
                                        0,
                                  ),
                                );
                              }
                            : () {},
                        title: latestAssignmentResponseModel.data?.title ?? '-',
                        description:
                            latestAssignmentResponseModel.data?.description ??
                                '-',
                        start: '-',
                        deadline:
                            latestAssignmentResponseModel.data?.deadline ?? '-',
                        status:
                            latestAssignmentResponseModel.data?.isUploaded ==
                                    true
                                ? 'Sudah Dikumpulkan'
                                : 'Belum Dikumpulkan',
                        color: latestAssignmentResponseModel.data?.isUploaded ==
                                true
                            ? AppColors.assignGreen
                            : AppColors.pink,
                        colorBg:
                            latestAssignmentResponseModel.data?.isUploaded ==
                                    true
                                ? AppColors.assignBgGreen
                                : AppColors.assignBgPink,
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20),
            ],
          ),
        ),
      ),
    );
  }
}
