import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/config/app_color.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String icon;
  final Color color;
  final Color colorScondary;
  final VoidCallback onTap;
  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.colorScondary,
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
          gradient: LinearGradient(
            colors: [
              color,
              colorScondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(4, 5),
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
              right: 5,
              child: SvgPicture.asset(
                icon,
                height: 45,
                width: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
