import 'package:bengkod_mobile_app/core/components/url_launcer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_color.dart';

Widget buildTextWithLinks(BuildContext context, String text) {
  final RegExp urlPattern = RegExp(
    r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+',
    caseSensitive: false,
  );

  List<TextSpan> spans = [];
  int start = 0;

  for (Match match in urlPattern.allMatches(text)) {
    // Tambahkan teks sebelum URL (jika ada)
    if (match.start > start) {
      spans.add(TextSpan(text: text.substring(start, match.start)));
    }

    // Tambahkan URL dengan gaya link
    final String url = match.group(0)!;
    spans.add(
      TextSpan(
        text: url,
        style: const TextStyle(
            color: AppColors.blue, decoration: TextDecoration.underline),
        recognizer: TapGestureRecognizer()
          ..onTap = () async {
            final Uri uri =
                Uri.parse(url.startsWith('http') ? url : 'https://$url');

            UrlLauncer().launchInBrowser(uri, context);
          },
      ),
    );

    start = match.end;
  }

  // Tambahkan sisa teks setelah URL terakhir (jika ada)
  if (start < text.length) {
    spans.add(TextSpan(text: text.substring(start)));
  }

  return RichText(
    text: TextSpan(
      style: const TextStyle(color: AppColors.grey, fontSize: 13),
      children: spans,
    ),
  );
}
