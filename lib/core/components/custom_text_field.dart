// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bengkod_mobile_app/core/components/spaces.dart';

import '../config/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextCapitalization? capizalize;
  final bool showLabel;
  final Widget? suffixIcon;
  final Color? color;
  final bool? readOnly;
  final TextInputAction? textInputAction;
  final String? hintext;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.capizalize,
    this.showLabel = true,
    this.suffixIcon,
    this.color = AppColors.grey,
    this.readOnly,
    this.textInputAction,
    this.hintext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel) ...[
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SpaceHeight(4.0)
        ],
        TextFormField(
          readOnly: readOnly ?? false,
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintext,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            suffixIcon: suffixIcon,
          ),
          textCapitalization: capizalize ?? TextCapitalization.words,
          textInputAction: textInputAction,
        ),
      ],
    );
  }
}
