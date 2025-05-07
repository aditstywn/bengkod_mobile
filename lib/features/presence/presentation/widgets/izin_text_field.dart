import 'package:flutter/material.dart';

import '../../../../core/config/app_color.dart';

class IzinTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final String? value;
  final bool? isReadOnly;
  const IzinTextField({
    super.key,
    this.controller,
    required this.label,
    this.hintText,
    this.value,
    this.isReadOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: 130,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        TextFormField(
          readOnly: isReadOnly ?? false,
          initialValue: value,
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 16,
            ),
            filled: true,
            fillColor: AppColors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.grey,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
