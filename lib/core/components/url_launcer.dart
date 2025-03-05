import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/app_color.dart';

class UrlLauncer {
  Future<void> launchInBrowser(Uri url, BuildContext context) async {
    try {
      if (!await launchUrl(
        url,
        mode: LaunchMode.inAppBrowserView,
      )) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Gagal membuka file'),
              backgroundColor: AppColors.red,
            ),
          );
        }
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal membuka file'),
            backgroundColor: AppColors.red,
          ),
        );
      }
    }
  }
}
