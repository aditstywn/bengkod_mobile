import 'dart:io';

import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/config/app_color.dart';

class AlertAssigment {
  Future<dynamic> fileAlert(
      BuildContext context, String? file, String type) async {
    if (type == 'docs') {
      // Buka file dengan aplikasi eksternal
      final result = await OpenFile.open(file);
      debugPrint('OpenFile result: ${result.message}');
      return;
    }
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: AppColors.white,
          content: SizedBox(
            height: context.deviceHeight * 0.5,
            width: context.deviceWidth * 0.8,
            child: type == 'pdf'
                ? SfPdfViewer.file(
                    File(file!),
                  )
                : (type == 'image' ||
                        type == 'jpg' ||
                        type == 'jpeg' ||
                        type == 'png')
                    ? Image.file(
                        File(file!),
                        fit: BoxFit.cover,
                      )
                    : type == 'txt'
                        ? SingleChildScrollView(
                            child: Text(
                              file!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        : const Center(
                            child: Text('File tidak dapat ditampilkan'),
                          ),
          ),
          actions: <Widget>[
            Button.outlined(
              height: 40,
              width: 80,
              label: 'OK',
              fontSize: 14,
              color: AppColors.white,
              borderColor: AppColors.primary,
              textColor: AppColors.primary,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
