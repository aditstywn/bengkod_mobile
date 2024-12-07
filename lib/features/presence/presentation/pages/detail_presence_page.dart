// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bengkod_mobile_app/features/presence/data/model/response/absence_history_response_model.dart';
import 'package:bengkod_mobile_app/features/presence/data/model/response/attendance_history_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bengkod_mobile_app/features/presence/presentation/bloc/attendanceHistory/attendance_history_bloc.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/absenceHistory/absence_history_bloc.dart';
import '../bloc/presences/presences_bloc.dart';

class DetailPresencePage extends StatefulWidget {
  final int idClass;
  final String className;
  final DateTime? beforeTime;
  const DetailPresencePage({
    super.key,
    required this.idClass,
    required this.className,
    required this.beforeTime,
  });

  @override
  State<DetailPresencePage> createState() => _DetailPresencePageState();
}

class _DetailPresencePageState extends State<DetailPresencePage> {
  @override
  void initState() {
    context
        .read<PresencesBloc>()
        .add(PresencesEvent.getPresences(widget.idClass));

    context
        .read<AttendanceHistoryBloc>()
        .add(const AttendanceHistoryEvent.getAttendaceHistory());

    context
        .read<AbsenceHistoryBloc>()
        .add(const AbsenceHistoryEvent.getAbsenceHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Detail Presence',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<PresencesBloc, PresencesState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              );
            },
            getPresencesSuccess: (presencesResponseModel) {
              final presences = presencesResponseModel.presences.data;
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 40,
                      width: 224,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          widget.className,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 284,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Present',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: AppColors.course,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Izin',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: AppColors.redTua,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Absent',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: 1.0,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.redTua,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: 0.9,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.course,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: 0.7,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.primary,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '50%',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Present',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<AttendanceHistoryBloc, AttendanceHistoryState>(
                    builder: (context, state) {
                      final attendace = state.maybeWhen(
                        orElse: () => [],
                        getAttendaceHistorySuccess:
                            (attendanceHistoryResponseModel) {
                          return attendanceHistoryResponseModel.data;
                        },
                      );

                      return BlocBuilder<AbsenceHistoryBloc,
                          AbsenceHistoryState>(
                        builder: (context, state) {
                          final absence = state.maybeWhen(
                            orElse: () => [],
                            getAbsenceHistorySuccess: (presencesResponseModel) {
                              return presencesResponseModel.data;
                            },
                          );

                          String status = '';
                          bool presensi = false;
                          bool izin = false;
                          bool applyIzin = false;

                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: presences.length,
                            itemBuilder: (context, index) {
                              presensi = attendace.any((element) =>
                                  element.presence.id == presences[index].id);

                              izin = absence.any((element) =>
                                  element.presence.id == presences[index].id);

                              if (presensi) {
                                status = 'Present';
                              } else if (izin) {
                                status = 'Izin';
                              } else if (DateTime.now()
                                  .isBefore(presences[index].presenceDate)) {
                                status = 'Mendatang';
                                applyIzin = true;
                              } else if (DateTime.now()
                                  .isAfter(presences[index].presenceDate)) {
                                status = 'Absent';
                              } else {
                                status = 'Absent';
                              }

                              return Card(
                                elevation: 1,
                                color: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pertemuan ke-${presences[index].week}',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w900,
                                              color: AppColors.tertiary,
                                            ),
                                          ),
                                          const SpaceHeight(8),
                                          Text(
                                            presences[index]
                                                .presenceDateFormatted,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.tertiary,
                                            ),
                                          ),
                                          const SpaceHeight(12),
                                          BlocBuilder<AttendanceHistoryBloc,
                                              AttendanceHistoryState>(
                                            builder: (context, state) {
                                              AttendencyDatum?
                                                  matchingDataAttendance;
                                              AbsenceDatum? matchingDataAbsence;
                                              return state.maybeWhen(
                                                orElse: () => const SizedBox(),
                                                getAttendaceHistorySuccess:
                                                    (attendanceHistoryResponseModel) {
                                                  final attendanceData =
                                                      attendanceHistoryResponseModel
                                                          .data;
                                                  if (presensi) {
                                                    matchingDataAttendance =
                                                        attendanceData
                                                            .firstWhere(
                                                      (element) =>
                                                          element.presence.id ==
                                                          presences[index].id,
                                                    );
                                                  }
                                                  return BlocBuilder<
                                                      AbsenceHistoryBloc,
                                                      AbsenceHistoryState>(
                                                    builder: (context, state) {
                                                      return state.maybeWhen(
                                                        orElse: () =>
                                                            const SizedBox(),
                                                        getAbsenceHistorySuccess:
                                                            (absenceHistoryResponseModel) {
                                                          final absenceData =
                                                              absenceHistoryResponseModel
                                                                  .data;

                                                          if (izin) {
                                                            matchingDataAbsence =
                                                                absenceData
                                                                    .firstWhere(
                                                              (element) =>
                                                                  element
                                                                      .presence
                                                                      .id ==
                                                                  presences[
                                                                          index]
                                                                      .id,
                                                            );
                                                          }
                                                          return SizedBox(
                                                            width: 100,
                                                            height: 25,
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: applyIzin
                                                                  ? () {}
                                                                  : presensi
                                                                      ? () {
                                                                          dialog(
                                                                            context,
                                                                            'Detail Presensi',
                                                                            'Tanggal Presensi : ${matchingDataAttendance!.clockInDateFormatted}',
                                                                            'Waktu Presensi : ${matchingDataAttendance!.clockInTime}',
                                                                            null,
                                                                          );
                                                                        }
                                                                      : izin
                                                                          ? () {
                                                                              dialog(
                                                                                context,
                                                                                'Detail Izin',
                                                                                'Tanggal : ${matchingDataAbsence!.approveChangedAtFormatted}',
                                                                                'Hasil : ${matchingDataAbsence!.approveStatusLabel}',
                                                                                'Note : ${matchingDataAbsence!.notes}',
                                                                              );
                                                                            }
                                                                          : null,
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor: applyIzin
                                                                    ? AppColors
                                                                        .course
                                                                    : (presensi ||
                                                                            izin
                                                                        ? AppColors
                                                                            .primary
                                                                        : AppColors
                                                                            .greyMuda),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                ),
                                                              ),
                                                              child: Text(
                                                                presensi
                                                                    ? 'DETAIL '
                                                                    : izin
                                                                        ? 'DETAIL IZIN'
                                                                        : 'AJUKAN IZIN',
                                                                style:
                                                                    TextStyle(
                                                                  color: presensi ||
                                                                          izin
                                                                      ? AppColors
                                                                          .white
                                                                      : AppColors
                                                                          .primary,
                                                                  fontSize: 8,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          const SpaceHeight(6),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        height: 38,
                                        width: 93,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: status == 'Present'
                                              ? AppColors.primary
                                              : status == 'Izin'
                                                  ? AppColors.course
                                                  : status == 'Mendatang'
                                                      ? AppColors.grey
                                                      : AppColors.redTua,
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            status,
                                            style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w900,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Future<dynamic> dialog(BuildContext context, String title, String content1,
      String content2, String? content3) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                content1,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                content2,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                content3 ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.primary,
            ),
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'OK',
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
