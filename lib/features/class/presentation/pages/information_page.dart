import 'package:bengkod_mobile_app/features/class/presentation/bloc/grades/grades_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import 'build_text_links.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../bloc/information/information_bloc.dart';
import '../bloc/instructor/instructor_bloc.dart';
import '../bloc/student/student_bloc.dart';

class InformationPage extends StatefulWidget {
  final int id;
  const InformationPage({
    super.key,
    required this.id,
  });

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  void initState() {
    super.initState();
    context.read<InstructorBloc>().add(InstructorEvent.getInstrutor(widget.id));
    context
        .read<InformationBloc>()
        .add(InformationEvent.getInformation(widget.id));
    context.read<StudentBloc>().add(StudentEvent.getStudent(widget.id));
    context.read<GradesBloc>().add(GradesEvent.getGrades(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Kelas'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<InstructorBloc>()
              .add(InstructorEvent.getInstrutor(widget.id));
          context
              .read<InformationBloc>()
              .add(InformationEvent.getInformation(widget.id));
          context.read<StudentBloc>().add(StudentEvent.getStudent(widget.id));
          context.read<GradesBloc>().add(GradesEvent.getGrades(widget.id));
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          children: [
            BlocBuilder<GradesBloc, GradesState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  error: (message) => Center(
                    child: Text(message),
                  ),
                  loading: () {
                    return Shimmer(
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          color: AppColors.shimer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                  getGradesSuccess: (grades) {
                    return Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: 110,
                          width: context.deviceWidth * 0.55,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.secondary,
                                AppColors.primary,
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Tugas',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${grades.data?.taskScore ?? '-'}',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'UTS',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${grades.data?.utsScore ?? '-'}',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'UAS',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${grades.data?.uasScore ?? '-'}',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SpaceWidth(10),
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            height: 110,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Hasil',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${grades.data?.finalScore ?? '-'} | ${grades.data?.gradeInfo?.grade ?? '-'}',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${grades.data?.gradeInfo?.description ?? '-'}',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SpaceHeight(20),
            BlocBuilder<InformationBloc, InformationState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  error: (message) => Center(
                    child: Text(message),
                  ),
                  loading: () {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Informasi',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SpaceHeight(10),
                        Shimmer(
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: AppColors.shimer,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  getInformationSuccess: (informationClassResponseModel) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Informasi',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SpaceHeight(10),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: informationClassResponseModel.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    informationClassResponseModel
                                        .data[index].title,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SpaceHeight(5),
                                  buildTextWithLinks(
                                      context,
                                      informationClassResponseModel
                                          .data[index].description),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SpaceHeight(10),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SpaceHeight(20),
            BlocBuilder<InstructorBloc, InstructorState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  error: (message) => Center(
                    child: Text(message),
                  ),
                  loading: () {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Struktur Kelas',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SpaceHeight(10),
                        Shimmer(
                          child: Container(
                            height: 216,
                            decoration: BoxDecoration(
                              color: AppColors.shimer,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  getInstructorSuccess: (instructorClassResponseModel) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Struktur Kelas',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SpaceHeight(10),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: instructorClassResponseModel.data.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.white,
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl: instructorClassResponseModel
                                          .data[index].image,
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
                                title: Text(
                                  instructorClassResponseModel.data[index].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(instructorClassResponseModel
                                    .data[index].role),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SpaceHeight(20),
            BlocBuilder<StudentBloc, StudentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  error: (message) => Center(
                    child: Text(message),
                  ),
                  loading: () {
                    return Shimmer(
                      child: Container(
                        height: 216,
                        decoration: BoxDecoration(
                          color: AppColors.shimer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                  getStudentSuccess: (student) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: student.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: AppColors.white,
                              child: ClipOval(
                                child: CachedNetworkImage(
                                  imageUrl: student.data[index].image,
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
                            title: Text(
                              student.data[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: const Text('Mahasiswa'),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
            const SpaceHeight(20),
          ],
        ),
      ),
    );
  }
}
