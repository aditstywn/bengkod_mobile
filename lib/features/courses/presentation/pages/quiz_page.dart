import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/models/request/answer_request_model.dart';
import '../bloc/answer/answer_bloc.dart';
import '../bloc/iformation_exams/information_exams_bloc.dart';
import '../bloc/start_exams/start_exams_bloc.dart';
import '../widgets/loading_quiz_page.dart';

class QuizPage extends StatefulWidget {
  final int courseId;
  const QuizPage({super.key, required this.courseId});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool isSelected = false;
  int? selectedAnswerIndex;

  int? page;
  int? totalPage;
  int? duration = 0;

  Timer? _timer;
  Duration remainingTime = Duration();

  @override
  void initState() {
    super.initState();
    context
        .read<StartExamsBloc>()
        .add(StartExamsEvent.StartExams(widget.courseId, null));
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ujian Akhir'),
          actions: [
            Text(
              '${remainingTime.inHours.remainder(60).toString().padLeft(2, '0')}:${remainingTime.inMinutes.remainder(60).toString().padLeft(2, '0')}:${remainingTime.inSeconds.remainder(60).toString().padLeft(2, '0')}',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            SpaceWidth(16),
          ],
        ),
        body: Stack(
          children: [
            BlocBuilder<StartExamsBloc, StartExamsState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox(),
                  error: (message) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ErrorCard(
                        message: message,
                      ),
                    );
                  },
                  loading: () {
                    return LoadingQuizPage();
                  },
                  startExamsSuccess: (start) {
                    totalPage = start.data?.exams?.total ?? 1;

                    duration = start.data?.duration ?? 0;

                    final startTimeStr = start.data?.startTime;
                    if (startTimeStr == null) return SizedBox();

                    final startTime =
                        DateTime.parse(startTimeStr.toIso8601String());
                    final now = DateTime.now();

                    // Hitung waktu selesai
                    final endTime =
                        startTime.add(Duration(minutes: duration ?? 0));

                    // Hitung sisa waktu
                    remainingTime = endTime.difference(now);

                    // Kalau waktu sudah habis, pastikan tidak negatif
                    if (remainingTime.isNegative) {
                      remainingTime = Duration.zero;
                    }

                    // Hapus timer lama kalau ada
                    _timer?.cancel();

                    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
                      if (remainingTime.inSeconds > 0) {
                        setState(() {
                          remainingTime = remainingTime - Duration(seconds: 1);
                        });
                      } else {
                        context
                            .read<AnswerBloc>()
                            .add(AnswerEvent.finish(widget.courseId));
                        timer.cancel();
                      }
                    });

                    print('Start Time: $startTime'); // dari server
                    print('Now: $now'); // lokal
                    print('End Time: $endTime'); // hasil perhitungan
                    print('Remaining: $remainingTime'); // harus sesuai

                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 70,
                            left: 16,
                            right: 16,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: LinearProgressIndicator(
                                          value: (start.data?.exams
                                                      ?.currentPage ??
                                                  0) /
                                              (start.data?.exams?.total ?? 1),
                                          color: AppColors.primary,
                                          minHeight: 5,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                      const SizedBox(width: 16.0),
                                      GestureDetector(
                                        onTap: () {
                                          selectedAnswerIndex = null;
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    AppColors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                title: const Text(
                                                  'Daftar Soal',
                                                  style: TextStyle(
                                                    color: AppColors.primary,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                content: SizedBox(
                                                  width:
                                                      context.deviceWidth * 0.8,
                                                  child: GridView.builder(
                                                    itemCount: start.data?.exams
                                                            ?.total ??
                                                        0,
                                                    shrinkWrap: true,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 5,
                                                    ),
                                                    itemBuilder:
                                                        (context, indexAlert) {
                                                      final isSelected =
                                                          (page ==
                                                              indexAlert + 1);

                                                      return GestureDetector(
                                                        onTap: () {
                                                          context.pop();
                                                          setState(() {
                                                            page =
                                                                indexAlert + 1;
                                                          });
                                                          context
                                                              .read<
                                                                  StartExamsBloc>()
                                                              .add(StartExamsEvent
                                                                  .StartExams(
                                                                      widget
                                                                          .courseId,
                                                                      page));
                                                        },
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(4.0),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: isSelected
                                                                ? AppColors
                                                                    .primary
                                                                : AppColors
                                                                    .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4),
                                                            border: Border.all(
                                                              color: AppColors
                                                                  .primary,
                                                              width: 2,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '${indexAlert + 1}',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: isSelected
                                                                    ? AppColors
                                                                        .white
                                                                    : AppColors
                                                                        .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4.0,
                                            horizontal: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            '${start.data?.exams?.to ?? '-'} / ${start.data?.exams?.total ?? '-'}',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: AppColors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SpaceHeight(16),
                                  Container(
                                    width: double.infinity,
                                    constraints: BoxConstraints(
                                      minHeight: context.deviceHeight * 0.2,
                                    ),
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
                                    child: Text(
                                      start.data?.exams?.data?[0].question ??
                                          '-',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  SpaceHeight(16),
                                  BlocConsumer<AnswerBloc, AnswerState>(
                                    listener: (context, state) {
                                      state.maybeWhen(
                                        orElse: () {},
                                        answerSuccess: (data) {
                                          // context.showSnackBar(
                                          //     data.meta?.message ?? '-');
                                        },
                                        finishAnswer: (finish) {
                                          context.read<StartExamsBloc>().add(
                                                StartExamsEvent
                                                    .detailInformationExams(
                                                        widget.courseId),
                                              );
                                          context
                                              .read<InformationExamsBloc>()
                                              .add(
                                                InformationExamsEvent
                                                    .informationExams(
                                                        widget.courseId, null),
                                              );
                                          context.pop();
                                          context.showAlert(
                                            true,
                                            'Ujian telah selesai, silahkan tunggu hasil ujian anda',
                                          );
                                        },
                                        error: (message) {
                                          context.showAlert(false, message);
                                        },
                                      );
                                    },
                                    builder: (context, state) {
                                      return ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: start.data?.exams?.data?[0]
                                                .answers?.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          late bool isSelected =
                                              selectedAnswerIndex == index;

                                          if (selectedAnswerIndex == null) {
                                            isSelected = start
                                                    .data
                                                    ?.exams
                                                    ?.data?[0]
                                                    .answers?[index]
                                                    .selected ??
                                                false;
                                          }
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedAnswerIndex = index;
                                              });
                                              final answer = AnswerRequestModel(
                                                questionId: start.data?.exams
                                                        ?.data?[0].questionId ??
                                                    0,
                                                answerId: start
                                                        .data
                                                        ?.exams
                                                        ?.data?[0]
                                                        .answers?[index]
                                                        .answerId ??
                                                    0,
                                              );
                                              context.read<AnswerBloc>().add(
                                                  AnswerEvent.answer(
                                                      answer, widget.courseId));
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12.0,
                                                      horizontal: 24.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: AppColors.grey
                                                        .withAlpha(100),
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                                color: isSelected
                                                    ? AppColors.assignSkyBlue
                                                    : AppColors.white,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      start
                                                              .data
                                                              ?.exams
                                                              ?.data?[0]
                                                              .answers?[index]
                                                              .answer ??
                                                          '-',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: isSelected
                                                            ? AppColors.black
                                                            : AppColors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: ShapeDecoration(
                                                      color: isSelected
                                                          ? Colors.white
                                                          : AppColors.white,
                                                      shape: OvalBorder(
                                                        side: BorderSide(
                                                          width: isSelected
                                                              ? 2
                                                              : 2,
                                                          color:
                                                              AppColors.primary,
                                                        ),
                                                      ),
                                                    ),
                                                    child: isSelected
                                                        ? const Icon(
                                                            Icons.circle,
                                                            color: AppColors
                                                                .primary,
                                                            size: 18,
                                                          )
                                                        : null,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            SpaceHeight(16),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: (page == null || page == 1)
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.spaceBetween,
                              children: [
                                if (page != null && page! > 1)
                                  Flexible(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (page == null) {
                                          page = 1;
                                        } else {
                                          page = page! - 1;
                                        }
                                        if (page! < 1) {
                                          page = 1;
                                        }

                                        selectedAnswerIndex = null;
                                        context.read<StartExamsBloc>().add(
                                            StartExamsEvent.StartExams(
                                                widget.courseId, page));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(110, 40),
                                        backgroundColor: AppColors.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Text(
                                        'Kembali',
                                        style:
                                            TextStyle(color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                Flexible(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (page == totalPage) {
                                        context.read<AnswerBloc>().add(
                                            AnswerEvent.finish(
                                                widget.courseId));
                                      } else {
                                        if (page == null) {
                                          page = 2;
                                        } else {
                                          page = page! + 1;
                                        }
                                        if (page! > totalPage!) {
                                          page = totalPage;
                                        }

                                        selectedAnswerIndex = null;
                                        context.read<StartExamsBloc>().add(
                                            StartExamsEvent.StartExams(
                                                widget.courseId, page));
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(110, 40),
                                      backgroundColor: AppColors.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      page == totalPage
                                          ? 'Selesai'
                                          : 'Lanjutkan',
                                      style: TextStyle(color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
