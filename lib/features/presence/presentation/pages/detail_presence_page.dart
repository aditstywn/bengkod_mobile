import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/app_color.dart';
import '../../../class/data/models/response/class_response_model.dart';
import '../bloc/presences/presences_bloc.dart';
import '../widgets/list_presensi.dart';

class DetailPresencePage extends StatefulWidget {
  final Class dataClass;
  const DetailPresencePage({
    super.key,
    required this.dataClass,
  });

  @override
  State<DetailPresencePage> createState() => _DetailPresencePageState();
}

class _DetailPresencePageState extends State<DetailPresencePage> {
  @override
  void initState() {
    context
        .read<PresencesBloc>()
        .add(PresencesEvent.getPresences(widget.dataClass.id));
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
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (message) => Center(
              child: Text(message),
            ),
            getPresencesSuccess:
                (presencesResponse, attendancesResponse, absencesResponse) {
              final presences = presencesResponse.presences.data;
              final attendances = attendancesResponse.data;
              final absences = absencesResponse.data;
              final statistic = presencesResponse.statistic;

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
                          widget.dataClass.name,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
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
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: 1,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.greyMuda,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: (statistic.unattendedPercentage +
                                          statistic.absentPercentage +
                                          statistic.attendedPercentage) /
                                      100,
                                  backgroundColor: Colors.transparent,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    AppColors.redTua,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: (statistic.absentPercentage +
                                          statistic.attendedPercentage) /
                                      100,
                                  backgroundColor: Colors.transparent,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    AppColors.course,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 134,
                                height: 134,
                                child: CircularProgressIndicator(
                                  strokeWidth: 30,
                                  value: (statistic.attendedPercentage / 100),
                                  backgroundColor: Colors.transparent,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    AppColors.primary,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${statistic.attendedPercentage}%',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Text(
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
                  ListPresensi(
                    className: widget.dataClass.name,
                    presences: presences,
                    attendances: attendances,
                    absences: absences,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
