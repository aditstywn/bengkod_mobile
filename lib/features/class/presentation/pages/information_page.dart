import 'package:bengkod_mobile_app/features/class/presentation/bloc/student/student_bloc.dart';

import '../bloc/instructor/instructor_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../bloc/information/information_bloc.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Information Class',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 110,
                  width: context.deviceWidth * 0.65,
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            '90',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            '90',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            '90',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 28,
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
                    child: const Column(
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
                          'A',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SpaceHeight(20),
            Card(
              elevation: 1,
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Information',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SpaceHeight(10),
                    BlocBuilder<InformationBloc, InformationState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          getInformationSuccess:
                              (informationClassResponseModel) {
                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount:
                                  informationClassResponseModel.data.length,
                              itemBuilder: (context, index) {
                                return Column(
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
                                    Text(
                                      informationClassResponseModel
                                          .data[index].description,
                                      style: const TextStyle(
                                        color: AppColors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SpaceHeight(10),
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            const SpaceHeight(20),
            const Center(
              child: Text(
                'Structure Class',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SpaceHeight(10),
            Card(
              elevation: 2,
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BlocBuilder<InstructorBloc, InstructorState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    getInstructorSuccess: (instructorClassResponseModel) {
                      return ListView.builder(
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
                            subtitle: Text(
                                instructorClassResponseModel.data[index].role),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            const SpaceHeight(20),
            Card(
              elevation: 2,
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    getStudentSuccess: (student) {
                      return ListView.builder(
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
                      );
                    },
                  );
                },
              ),
            ),
            const SpaceHeight(20),
          ],
        ),
      ),
    );
  }
}
