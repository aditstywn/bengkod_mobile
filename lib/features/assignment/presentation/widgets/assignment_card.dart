import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/dotted_border.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class AssignmentCard extends StatelessWidget {
  final String title;
  final String? classTitle;
  final String description;
  final String start;
  final String deadline;
  final String status;
  final Color color;
  final Color colorBg;
  final VoidCallback onTap;
  const AssignmentCard({
    super.key,
    required this.title,
    this.classTitle,
    required this.description,
    required this.start,
    required this.deadline,
    required this.status,
    required this.color,
    required this.colorBg,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1,
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SpaceHeight(35),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.assignSkyBlue,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/icon_assignment.svg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      const SpaceWidth(10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              description,
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SpaceHeight(16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Start $start',
                            style: const TextStyle(
                              fontSize: 9,
                            ),
                          ),
                          Text(
                            'Deadline $deadline',
                            style: const TextStyle(
                              color: AppColors.red,
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                      dottedBorder(color, colorBg, status),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 40,
                width: context.deviceWidth / 2,
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 4,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    classTitle ?? 'Assignment',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
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
