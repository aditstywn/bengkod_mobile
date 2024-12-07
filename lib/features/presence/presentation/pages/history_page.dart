import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../../class/presentation/bloc/class/class_bloc.dart';
import '../../../class/presentation/widgets/class_card.dart';
import 'barcode_scaner_zoom.dart';
import 'detail_presence_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    context.read<ClassBloc>().add(const ClassEvent.getClass());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
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
                      'Presence',
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
                        return Container(
                          height: 172,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                      getClassSuccess: (classResponseModel) {
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: classResponseModel.data.length,
                          itemBuilder: (context, index) {
                            return ClassCard(
                              onTap: () {
                                final timeEnd =
                                    classResponseModel.data[index].timeEnd;
                                DateTime beforeTime = DateTime.now();
                                final today = DateTime.now();
                                try {
                                  final parsedTime =
                                      DateFormat('HH.mm').parse(timeEnd);
                                  beforeTime = DateTime(
                                    today.year,
                                    today.month,
                                    today.day,
                                    parsedTime.hour,
                                    parsedTime.minute,
                                  );
                                } catch (e) {
                                  beforeTime = DateTime.now();
                                }

                                print(beforeTime);
                                print(DateTime.now());

                                context.push(DetailPresencePage(
                                  beforeTime: beforeTime,
                                  idClass: classResponseModel.data[index].id,
                                  className:
                                      classResponseModel.data[index].name,
                                ));
                              },
                              data: classResponseModel.data[index],
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
            Positioned(
              bottom: 16,
              left: context.deviceWidth / 2 - 80,
              right: context.deviceWidth / 2 - 80,
              child: GestureDetector(
                onTap: () {
                  context.push(const BarcodeScannerWithZoom());
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
                        'Scan Barcode',
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
