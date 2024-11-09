import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/dotted_border.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class AssignmentCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String start;
  final String deadline;
  final String status;
  final Color color;
  final Color colorBg;
  final VoidCallback onTap;
  const AssignmentCard({
    super.key,
    required this.title,
    required this.subtitle,
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
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
                          subtitle,
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
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Deadline $deadline',
                        style: const TextStyle(
                          color: AppColors.red,
                          fontSize: 12,
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
      ),
    );
  }
}
