import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

DottedBorder dottedBorder(Color color, Color colorBg, String status) {
  return DottedBorder(
    color: color,
    strokeWidth: 2,
    dashPattern: const [5, 5],
    borderType: BorderType.RRect,
    radius: const Radius.circular(6),
    child: Container(
      padding: const EdgeInsets.all(5),
      height: 30,
      // width: ,
      decoration: BoxDecoration(
        color: colorBg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
            fontSize: 12,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
