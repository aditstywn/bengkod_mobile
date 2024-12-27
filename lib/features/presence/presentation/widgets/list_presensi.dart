import 'package:bengkod_mobile_app/core/components/show_top_notification.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    Future<void> launchInBrowser(Uri url, BuildContext context) async {
      try {
        if (!await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        )) {
          if (context.mounted) {
            ShowTopNotification(success: false).show(
              context,
              'Gagal membuka link...',
            );
          }
          throw Exception('Could not launch $url');
        }
      } catch (e) {
        if (context.mounted) {
          ShowTopNotification(success: false).show(
            context,
            'Terjadi kesalahan: ${e.toString()}',
          );
        }
      }
    }

    return ListView.builder(
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
            .any((element) => element.presence.id == presences[index].id);
        izin = absences
            .any((element) => element.presence.id == presences[index].id);

        upComming = DateTime.now().isBefore(presences[index].presenceDate) ||
            (DateTime.now().year == presences[index].presenceDate.year &&
                DateTime.now().month == presences[index].presenceDate.month &&
                DateTime.now().day == presences[index].presenceDate.day);

        missed = DateTime.now().isAfter(presences[index].presenceDate);

        if (presensi) {
          status = 'Present';
        } else if (izin) {
          status = 'Izin';
        } else if (upComming) {
          status = 'Upcoming';
        } else if (missed) {
          status = 'Absent';
        } else {
          status = 'Absent';
        }

        AttendanceDatum? attendance;
        AbsenceDatum? absence;
        if (presensi) {
          attendance = attendances.firstWhere(
              (element) => element.presence.id == presences[index].id);
        }
        if (izin) {
          absence = absences.firstWhere(
              (element) => element.presence.id == presences[index].id);

          if (absence.approveStatus == 1) {
            status = 'Menunggu';
          } else if (absence.approveStatus == 2) {
            status = 'Izin';
          } else if (absence.approveStatus == 3) {
            status = 'Ditolak';
          }
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
                      presences[index].presenceDateFormatted,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.tertiary,
                      ),
                    ),
                    const SpaceHeight(12),
                    SizedBox(
                      width: 100,
                      height: 25,
                      child: ElevatedButton(
                        onPressed: presensi
                            ? () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
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
                                              'Room : ${attendance!.presence.room}',
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
                                                        launchInBrowser(
                                                            Uri.parse(absence!
                                                                .attachment!),
                                                            context);
                                                        // final success =
                                                        //     await AssignmentRemoteDatasource()
                                                        //         .downloadTask(
                                                        //             absence!
                                                        //                 .attachment!);

                                                        // if (success) {
                                                        //   if (context.mounted) {
                                                        //     ShowTopNotification(
                                                        //             success:
                                                        //                 true)
                                                        //         .show(
                                                        //       context,
                                                        //       'File berhasil diunduh...',
                                                        //     );
                                                        //   }
                                                        // } else {
                                                        //   if (context.mounted) {
                                                        //     ShowTopNotification(
                                                        //       success: false,
                                                        //     ).show(
                                                        //       context,
                                                        //       'Gagal mengunduh file...',
                                                        //     );
                                                        //   }
                                                        // }
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
    );
  }
}
