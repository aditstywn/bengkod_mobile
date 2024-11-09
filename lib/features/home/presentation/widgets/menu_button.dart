import 'package:flutter/material.dart';

import '../../../../core/config/app_color.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: color,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 5,
              left: 5,
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 10,
              child: Icon(
                icon,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
