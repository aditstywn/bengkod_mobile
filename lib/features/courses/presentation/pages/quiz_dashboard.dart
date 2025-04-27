import 'package:bengkod_mobile_app/core/components/custom_pagination.dart';
import 'package:bengkod_mobile_app/features/courses/presentation/bloc/exams/exams_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../bloc/iformation_exams/information_exams_bloc.dart';
import '../bloc/start_exams/start_exams_bloc.dart';
import 'quiz_page.dart';

class QuizDashboard extends StatefulWidget {
  final int idCourse;
  const QuizDashboard({super.key, required this.idCourse});

  @override
  State<QuizDashboard> createState() => _QuizDashboardState();
}

class _QuizDashboardState extends State<QuizDashboard> {
  int page = 1;
  @override
  void initState() {
    super.initState();
    context.read<InformationExamsBloc>().add(
          InformationExamsEvent.informationExams(widget.idCourse, null),
        );
    context.read<StartExamsBloc>().add(
          StartExamsEvent.detailInformationExams(widget.idCourse),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda Ujian'),
      ),
      body: BlocBuilder<StartExamsBloc, StartExamsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (message) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<InformationExamsBloc>().add(
                          InformationExamsEvent.informationExams(
                              widget.idCourse, null),
                        );
                  },
                  child: ErrorCard(
                    message: message,
                  ),
                ),
              );
            },
            detailInformationExamsSuccess: (detailInformation) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<InformationExamsBloc>().add(
                        InformationExamsEvent.informationExams(
                            widget.idCourse, null),
                      );
                  context.read<StartExamsBloc>().add(
                        StartExamsEvent.detailInformationExams(widget.idCourse),
                      );
                },
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.grey.withAlpha(100),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.assignment,
                                color: AppColors.primary,
                              ),
                              SpaceWidth(16),
                              Text(
                                detailInformation.data?.title ?? '-',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                          SpaceHeight(10),
                          Text(
                            detailInformation.data?.description ?? '-',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SpaceHeight(14),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: AppColors.greyMuda.withAlpha(50),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Jumlah Soal : ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primary,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        '20 Pilhan Ganda ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SpaceHeight(10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Durasi Soal : ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primary,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        '60 Menit ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SpaceHeight(20),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.greyMuda.withAlpha(50),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hasil Ujian : ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primary,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                BlocBuilder<InformationExamsBloc,
                                    InformationExamsState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      orElse: () => SizedBox(),
                                      error: (message) {
                                        if (message ==
                                            'Hasil Ujian tidak ditemukan untuk course ID ${widget.idCourse}.') {
                                          return Text(
                                            'Belum ada hasil ujian',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.grey,
                                            ),
                                          );
                                        }
                                        return Text(
                                          message,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.grey,
                                          ),
                                          textAlign: TextAlign.center,
                                        );
                                      },
                                      loading: () => Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                                      informationExamsSuccess: (information) {
                                        final exams = information.data?.exams;

                                        if (exams == null || exams.isEmpty) {
                                          return const Center(
                                            child: Text(
                                              'Belum ada hasil ujian',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          );
                                        }

                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ListView.separated(
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemCount: exams.length,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${index + 1}. ${exams[index].score ?? 0} ( ${exams[index].correctAnswers ?? 0} / 20 )',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors.black,
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    SpaceHeight(4),
                                                    Text(
                                                      'Status : ${exams[index].result}',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors.grey,
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                );
                                              },
                                              separatorBuilder:
                                                  (context, index) =>
                                                      SpaceHeight(12),
                                            ),
                                            if ((information.meta?.pagination
                                                        ?.totalPages ??
                                                    0) >
                                                1)
                                              CustomPagination(
                                                currentPage: page,
                                                totalPages: information
                                                        .meta
                                                        ?.pagination
                                                        ?.totalPages ??
                                                    0,
                                                onPageChanged: (pages) {
                                                  context
                                                      .read<
                                                          InformationExamsBloc>()
                                                      .add(
                                                        InformationExamsEvent
                                                            .informationExams(
                                                                widget.idCourse,
                                                                pages),
                                                      );
                                                  setState(() {
                                                    page = pages;
                                                  });
                                                },
                                              )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SpaceHeight(20),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: BlocConsumer<ExamsBloc, ExamsState>(
                              listener: (context, state) {
                                state.maybeWhen(
                                  orElse: () {},
                                  createExamsSuccess: (create) {
                                    context.push(QuizPage(
                                      courseId: widget.idCourse,
                                    ));
                                  },
                                  error: (message) {
                                    context.showAlert(false, message);
                                  },
                                );
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return ElevatedButton(
                                      onPressed: () {
                                        context.read<ExamsBloc>().add(
                                            ExamsEvent.createExams(
                                                widget.idCourse, null));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        maximumSize: const Size(120, 40),
                                        backgroundColor: AppColors.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Text(
                                        'Mulai Ujian',
                                        style:
                                            TextStyle(color: AppColors.white),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          )
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
      // body: BlocBuilder<InformationExamsBloc, InformationExamsState>(
      //   builder: (context, state) {
      //     return state.maybeWhen(
      //       orElse: () => SizedBox(),
      //       loading: () => const Center(
      //         child: CircularProgressIndicator(),
      //       ),
      //       error: (message) {
      //         return Padding(
      //           padding: const EdgeInsets.all(16.0),
      //           child: RefreshIndicator(
      //             onRefresh: () async {
      //               context.read<InformationExamsBloc>().add(
      //                     InformationExamsEvent.informationExams(
      //                         widget.idCourse ?? 0, null),
      //                   );
      //             },
      //             child: ErrorCard(
      //               message: message,
      //             ),
      //           ),
      //         );
      //       },
      //       informationExamsSuccess: (information) {
      //         final info = information.data?.course;
      //         final exams = information.data?.exams;

      //         return RefreshIndicator(
      //           onRefresh: () async {
      //             context.read<InformationExamsBloc>().add(
      //                   InformationExamsEvent.informationExams(
      //                       widget.idCourse ?? 0, null),
      //                 );
      //           },
      //           child: ListView(
      //             padding: EdgeInsets.all(16),
      //             children: [
      //               Container(
      //                 padding: const EdgeInsets.all(16.0),
      //                 decoration: BoxDecoration(
      //                   color: AppColors.white,
      //                   borderRadius: BorderRadius.circular(10),
      //                   boxShadow: [
      //                     BoxShadow(
      //                       color: AppColors.grey.withAlpha(100),
      //                       blurRadius: 5,
      //                       offset: const Offset(0, 2),
      //                     ),
      //                   ],
      //                 ),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Row(
      //                       children: [
      //                         Icon(
      //                           Icons.assignment,
      //                           color: AppColors.primary,
      //                         ),
      //                         SpaceWidth(16),
      //                         Text(
      //                           info?.name ?? '-',
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                             fontWeight: FontWeight.w700,
      //                             color: AppColors.primary,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     SpaceHeight(10),
      //                     Text(
      //                       info?.description ?? '-',
      //                       style: TextStyle(
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.w400,
      //                         color: AppColors.black,
      //                       ),
      //                       textAlign: TextAlign.justify,
      //                     ),
      //                     SpaceHeight(14),
      //                     Container(
      //                       padding: const EdgeInsets.all(16.0),
      //                       decoration: BoxDecoration(
      //                         color: AppColors.greyMuda.withAlpha(50),
      //                         borderRadius: BorderRadius.circular(5),
      //                       ),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Row(
      //                             mainAxisAlignment:
      //                                 MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Flexible(
      //                                 child: Text(
      //                                   'Jumlah Soal : ',
      //                                   style: TextStyle(
      //                                     fontSize: 14,
      //                                     fontWeight: FontWeight.w700,
      //                                     color: AppColors.primary,
      //                                   ),
      //                                   maxLines: 2,
      //                                   overflow: TextOverflow.ellipsis,
      //                                 ),
      //                               ),
      //                               Flexible(
      //                                 child: Text(
      //                                   '20 Pilhan Ganda ',
      //                                   style: TextStyle(
      //                                     fontSize: 14,
      //                                     fontWeight: FontWeight.w400,
      //                                     color: AppColors.black,
      //                                   ),
      //                                   maxLines: 2,
      //                                   overflow: TextOverflow.ellipsis,
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                           SpaceHeight(10),
      //                           Row(
      //                             mainAxisAlignment:
      //                                 MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Flexible(
      //                                 child: Text(
      //                                   'Durasi Soal : ',
      //                                   style: TextStyle(
      //                                     fontSize: 14,
      //                                     fontWeight: FontWeight.w700,
      //                                     color: AppColors.primary,
      //                                   ),
      //                                   maxLines: 2,
      //                                   overflow: TextOverflow.ellipsis,
      //                                 ),
      //                               ),
      //                               Flexible(
      //                                 child: Text(
      //                                   '60 Menit ',
      //                                   style: TextStyle(
      //                                     fontSize: 14,
      //                                     fontWeight: FontWeight.w400,
      //                                     color: AppColors.black,
      //                                   ),
      //                                   maxLines: 2,
      //                                   overflow: TextOverflow.ellipsis,
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     SpaceHeight(20),
      //                     Container(
      //                       width: double.infinity,
      //                       padding: const EdgeInsets.symmetric(
      //                         horizontal: 16,
      //                         vertical: 8,
      //                       ),
      //                       decoration: BoxDecoration(
      //                         color: AppColors.greyMuda.withAlpha(50),
      //                         borderRadius: BorderRadius.circular(5),
      //                       ),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(
      //                             'Hasil Ujian : ',
      //                             style: TextStyle(
      //                               fontSize: 14,
      //                               fontWeight: FontWeight.w700,
      //                               color: AppColors.primary,
      //                             ),
      //                             maxLines: 2,
      //                             overflow: TextOverflow.ellipsis,
      //                           ),
      //                           ListView.separated(
      //                             shrinkWrap: true,
      //                             physics: const NeverScrollableScrollPhysics(),
      //                             itemCount: exams?.length ?? 0,
      //                             itemBuilder: (context, index) {
      //                               return Column(
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: [
      //                                   Text(
      //                                     '${index + 1}. ${exams?[index].score ?? 0} ( ${exams?[index].correctAnswers ?? 0} / 20 )',
      //                                     style: TextStyle(
      //                                       fontSize: 14,
      //                                       fontWeight: FontWeight.w400,
      //                                       color: AppColors.black,
      //                                     ),
      //                                     maxLines: 2,
      //                                     overflow: TextOverflow.ellipsis,
      //                                   ),
      //                                   SpaceHeight(4),
      //                                   Text(
      //                                     'Status : ${exams?[index].result}',
      //                                     style: TextStyle(
      //                                       fontSize: 14,
      //                                       fontWeight: FontWeight.w400,
      //                                       color: AppColors.grey,
      //                                     ),
      //                                     maxLines: 2,
      //                                     overflow: TextOverflow.ellipsis,
      //                                   ),
      //                                 ],
      //                               );
      //                             },
      //                             separatorBuilder: (context, index) =>
      //                                 SpaceHeight(12),
      //                           ),
      //                           if ((information.meta?.pagination?.totalPages ??
      //                                   0) >
      //                               1)
      //                             CustomPagination(
      //                               currentPage: page,
      //                               totalPages: information
      //                                       .meta?.pagination?.totalPages ??
      //                                   0,
      //                               onPageChanged: (pages) {
      //                                 context.read<InformationExamsBloc>().add(
      //                                       InformationExamsEvent
      //                                           .informationExams(
      //                                               widget.idCourse ?? 0,
      //                                               pages),
      //                                     );
      //                                 setState(() {
      //                                   page = pages;
      //                                 });
      //                               },
      //                             )
      //                         ],
      //                       ),
      //                     ),
      //                     SpaceHeight(20),
      //                     Align(
      //                       alignment: Alignment.bottomRight,
      //                       child: BlocConsumer<ExamsBloc, ExamsState>(
      //                         listener: (context, state) {
      //                           state.maybeWhen(
      //                             orElse: () {},
      //                             createExamsSuccess: (create) {
      //                               context.push(QuizPage(
      //                                 courseId: widget.idCourse ?? 0,
      //                               ));
      //                             },
      //                             error: (message) {
      //                               context.showAlert(false, message);
      //                             },
      //                           );
      //                         },
      //                         builder: (context, state) {
      //                           return state.maybeWhen(
      //                             orElse: () {
      //                               return ElevatedButton(
      //                                 onPressed: () {
      //                                   context.read<ExamsBloc>().add(
      //                                       ExamsEvent.createExams(
      //                                           widget.idCourse ?? 0, null));
      //                                 },
      //                                 style: ElevatedButton.styleFrom(
      //                                   maximumSize: const Size(120, 40),
      //                                   backgroundColor: AppColors.primary,
      //                                   shape: RoundedRectangleBorder(
      //                                     borderRadius:
      //                                         BorderRadius.circular(10),
      //                                   ),
      //                                 ),
      //                                 child: const Text(
      //                                   'Mulai Ujian',
      //                                   style:
      //                                       TextStyle(color: AppColors.white),
      //                                 ),
      //                               );
      //                             },
      //                           );
      //                         },
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
