import 'package:flutter/material.dart';

import '../config/app_color.dart';

enum ButtonStyle { filled, outlined }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    this.color,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 16.0,
    this.icon,
    this.iconRight,
    this.disabled = false,
    this.fontSize = 16.0,
    this.borderColor,
    this.isLoading,
  });

  const Button.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.outlined,
    this.color = AppColors.white,
    this.textColor = AppColors.primary,
    this.width = double.infinity,
    this.height,
    this.borderRadius = 10,
    this.icon,
    this.iconRight,
    this.disabled = false,
    this.fontSize = 16.0,
    this.borderColor,
    this.isLoading,
  });

  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final Color? color;
  final Color textColor;
  final double width;
  final double? height;
  final double borderRadius;
  final Widget? icon;
  final Widget? iconRight;
  final bool disabled;
  final double fontSize;
  final Color? borderColor;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.0,
      width: width,
      child: style == ButtonStyle.filled
          ? GestureDetector(
              onTap: disabled ? null : onPressed,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  gradient: color == null
                      ? const LinearGradient(
                          colors: [
                            AppColors.primary,
                            AppColors.secondary,
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: isLoading == true
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: AppColors.white,
                          ),
                        )
                      : Text(
                          label,
                          style: TextStyle(
                            color: textColor,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ))
          : OutlinedButton(
              onPressed: disabled ? null : onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: BorderSide(color: borderColor ?? AppColors.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: iconRight != null
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Flexible(
                    child: isLoading == true
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                            ),
                          )
                        : Text(
                            label,
                            style: TextStyle(
                              color: textColor,
                              fontSize: fontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                  ),
                  iconRight ?? const SizedBox.shrink(),
                  if (iconRight != null) const SizedBox(width: 10.0),
                ],
              ),
            ),
    );
  }
}
