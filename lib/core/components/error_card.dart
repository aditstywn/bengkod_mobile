import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../config/app_color.dart';

class ErrorCard extends StatelessWidget {
  final String message;
  const ErrorCard({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
        height: context.deviceHeight - 120,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            message,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
