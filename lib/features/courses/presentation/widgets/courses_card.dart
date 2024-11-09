// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

class CoursesCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  final Color color;

  const CoursesCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 110,
      width: 260,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 110,
                width: 90,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.courseUngu,
                      AppColors.courseRed,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                left: 14,
                top: 20,
                child: Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.courseRed,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(1, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(icon),
                  ),
                ),
              ),
            ],
          ),
          const SpaceWidth(10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
