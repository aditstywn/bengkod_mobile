import 'package:bengkod_mobile_app/features/class/data/models/response/class_response_model.dart';
import 'package:bengkod_mobile_app/features/presence/presentation/pages/scaner_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../core/components/error_card.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/config/location_service.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../class/presentation/bloc/class/class_bloc.dart';
import '../../../class/presentation/widgets/class_card.dart';
import 'detail_presence_page.dart';

class PresencePage extends StatefulWidget {
  const PresencePage({super.key});

  @override
  State<PresencePage> createState() => _PresencePageState();
}

class _PresencePageState extends State<PresencePage> {
  final LocationService _loc = LocationService();
  Position? currentPosition;

  Future<void> _getCurrentLocation() async {
    try {
      final position = await _loc.getCurrentLocation();
      setState(() {
        currentPosition = position;
      });
    } catch (e) {
      if (mounted) {
        context.pop();
        context.showAlert(
          false,
          'Gagal mendapatkan lokasi, silahkan aktifkan GPS dan coba lagi',
        );
      }
    }
  }

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  int? length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: () async {
                context.read<ClassBloc>().add(const ClassEvent.getClass());
              },
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/icon_finger.svg',
                        color: AppColors.primary,
                        width: 24,
                      ),
                      const SpaceWidth(10),
                      const Text(
                        'Kehadiran',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SpaceHeight(10),
                  BlocBuilder<ClassBloc, ClassState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return const SizedBox();
                        },
                        loading: () {
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: length ?? 3,
                            itemBuilder: (context, index) {
                              return Shimmer(
                                child: Container(
                                  height: 172,
                                  decoration: BoxDecoration(
                                    color: AppColors.shimer,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SpaceHeight(16),
                          );
                        },
                        error: (message) {
                          return RefreshIndicator(
                            onRefresh: () async {
                              context
                                  .read<ClassBloc>()
                                  .add(const ClassEvent.getClass());
                            },
                            child: ErrorCard(
                              message: message,
                            ),
                          );
                        },
                        getClassSuccess: (classResponseModel) {
                          if (classResponseModel.data?.isEmpty == true) {
                            final heigth = context.deviceHeight - 200;
                            return Container(
                              margin: EdgeInsets.only(top: heigth / 2 - 100),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.error,
                                    size: 80,
                                    color: AppColors.grey,
                                  ),
                                  const SpaceHeight(16),
                                  Text(
                                    'Anda belum memiliki kelas',
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }

                          return ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: classResponseModel.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return ClassCard(
                                onTap: () {
                                  context.push(DetailPresencePage(
                                    dataClass:
                                        classResponseModel.data?[index] ??
                                            Class(),
                                  ));
                                },
                                data:
                                    classResponseModel.data?[index] ?? Class(),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SpaceHeight(16),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              left: context.deviceWidth / 2 - 80,
              right: context.deviceWidth / 2 - 80,
              child: GestureDetector(
                onTap: () {
                  if (currentPosition == null) {
                    context.showAlert(
                      false,
                      'Gagal mendapatkan lokasi, silahkan aktifkan GPS dan coba lagi',
                    );
                    return;
                  }
                  context.push(ScanerPage(
                    position: currentPosition,
                  ));
                },
                child: Container(
                  height: 44,
                  width: 160,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/icon_finger.svg',
                        color: AppColors.primary,
                        width: 17,
                      ),
                      const SpaceWidth(10),
                      const Text(
                        'Scan QR Code',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
