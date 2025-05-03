import 'package:flutter/material.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/models/response/absence_history_response_model.dart';
import '../../data/models/response/attendace_history_response_model.dart';
import '../../data/models/response/presences_response_model.dart';
import '../pages/izin_page.dart';

class ListPresensi extends StatelessWidget {
  final String className;
  const ListPresensi({
    super.key,
    required this.className,
    required this.presences,
    required this.attendances,
    required this.absences,
  });

  final List<PresencesDatum> presences;
  final List<AttendanceDatum> attendances;
  final List<AbsenceDatum> absences;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: presences.length,
      itemBuilder: (context, index) {
        bool presensi = false;
        bool izin = false;
        bool upComming = false;
        bool missed = false;
        String status = '';

        presensi = attendances
            .any((element) => element.presence?.id == presences[index].id);
        izin = absences
            .any((element) => element.presence!.id == presences[index].id);

        upComming = DateTime.now()
                .isBefore(presences[index].presenceDate ?? DateTime.now()) ||
            (DateTime.now().year == presences[index].presenceDate?.year &&
                DateTime.now().month == presences[index].presenceDate?.month &&
                DateTime.now().day == presences[index].presenceDate?.day);

        missed = DateTime.now()
            .isAfter(presences[index].presenceDate ?? DateTime.now());

        if (presensi) {
          status = 'Hadir';
        } else if (izin) {
          status = 'Izin';
        } else if (upComming) {
          status = 'Mendatang';
        } else if (missed) {
          status = 'Absent';
        } else {
          status = 'Absent';
        }

        AttendanceDatum? attendance;
        AbsenceDatum? absence;
        if (presensi) {
          attendance = attendances.firstWhere(
              (element) => element.presence?.id == presences[index].id);
        }
        if (izin) {
          absence = absences.firstWhere(
              (element) => element.presence?.id == presences[index].id);

          if (absence.approveStatus == 1) {
            status = 'Menunggu';
          } else if (absence.approveStatus == 2) {
            status = 'Izin';
          } else if (absence.approveStatus == 3) {
            status = 'Ditolak';
          }
        }
        return Container(
          height: 116,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      presences[index].presenceDateFormatted ?? '-',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.tertiary,
                      ),
                    ),
                    const SpaceHeight(12),
                    SizedBox(
                      // width: 100,
                      height: 25,
                      child: ElevatedButton(
                        onPressed: presensi
                            ? () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        backgroundColor: AppColors.white,
                                        title: const Text(
                                          'Detail Presensi',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        content: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Room : ${attendance!.presence?.room ?? '-'}',
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.tertiary,
                                              ),
                                            ),
                                            const SpaceHeight(8),
                                            Text(
                                              'Tanggal : ${attendance.clockInDateFormatted}',
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.tertiary,
                                              ),
                                            ),
                                            const SpaceHeight(8),
                                            Text(
                                              'Jam Masuk : ${attendance.clockInTime}',
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.tertiary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              backgroundColor:
                                                  AppColors.primary,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
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
                                    });
                              }
                            : izin
                                ? () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            backgroundColor: AppColors.white,
                                            title: const Text(
                                              'Detail Izin',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            content: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Jenis : ${absence!.absenceType}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.tertiary,
                                                  ),
                                                ),
                                                const SpaceHeight(8),
                                                Text(
                                                  'Status : ${absence.approveStatusLabel}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.tertiary,
                                                  ),
                                                ),
                                                const SpaceHeight(8),
                                                Text(
                                                  'Tanggal : ${absence.approveChangedAtFormatted}',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.tertiary,
                                                  ),
                                                ),
                                                const SpaceHeight(8),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      'File : ',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            AppColors.tertiary,
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () async {
                                                        final url = absence
                                                                ?.attachment ??
                                                            '';
                                                        final fileExtention =
                                                            url
                                                                .toString()
                                                                .split('.')
                                                                .last
                                                                .toLowerCase();

                                                        if (['pdf'].contains(
                                                            fileExtention)) {
                                                          context.showAlertFile(
                                                              'PDF', url, true);
                                                        } else {
                                                          context.showAlertFile(
                                                              'Image',
                                                              url,
                                                              false);
                                                        }
                                                      },
                                                      child: const Text(
                                                        'Unduh File',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .course,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SpaceHeight(8),
                                                Text(
                                                  absence.approveNote != null
                                                      ? 'Catatan : ${absence.approveNote}'
                                                      : '',
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.tertiary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor:
                                                      AppColors.primary,
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
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
                                        });
                                  }
                                : upComming
                                    ? () {
                                        context.push(
                                          IzinPage(
                                            presence: presences[index],
                                            className: className,
                                          ),
                                        );
                                      }
                                    : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: presensi || izin
                              ? AppColors.primary
                              : AppColors.course,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          presensi
                              ? 'DETAIL'
                              : izin
                                  ? 'DETAIL IZIN'
                                  : 'AJUKAN IZIN',
                          style: TextStyle(
                            color: presensi || izin
                                ? AppColors.white
                                : AppColors.primary,
                            fontSize: 8,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
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
                    color: presensi
                        ? AppColors.primary
                        : izin
                            ? (absence?.approveStatus == 3
                                ? AppColors.red
                                : AppColors.course)
                            : upComming
                                ? AppColors.greyMuda
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
      separatorBuilder: (context, index) {
        return const SpaceHeight(6);
      },
    );
  }
}
