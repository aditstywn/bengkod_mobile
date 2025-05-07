import 'package:flutter/material.dart';

import '../config/app_color.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      activeColor: AppColors.primary,
      checkColor: Colors.white,
      fillColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return AppColors.white;
        },
      ),
      side: WidgetStateBorderSide.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return BorderSide(color: AppColors.primary, width: 2);
          }
          return BorderSide(color: AppColors.grey, width: 2);
        },
      ),
      onChanged: onChanged,
    );
  }
}
