import 'package:flutter/material.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../../data/models/response/class_response_model.dart';

class ClassCard extends StatelessWidget {
  final Class data;
  final VoidCallback onTap;
  const ClassCard({
    super.key,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 172,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  AppColors.secondary,
                  AppColors.primary,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SpaceHeight(40),
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SpaceHeight(6),
                Text(
                  data.description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 50,
              width: 130,
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  data.day,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 18,
            child: Row(
              children: [
                Text(
                  '${data.timeStart} - ${data.timeEnd}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SpaceWidth(10),
                Text(
                  '( ${data.room} )',
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
