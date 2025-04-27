import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:lottie/lottie.dart';

import '../components/buttons.dart';
import '../components/url_launcer.dart';
import '../config/app_color.dart';

extension BuildContextExt on BuildContext {
  double get deviceHeight => MediaQuery.of(this).size.height;

  double get deviceWidth => MediaQuery.of(this).size.width;
}

extension NavigatorExt on BuildContext {
  void pop<T extends Object>([T? result]) {
    Navigator.pop(this, result);
  }

  void popToRoot<T extends Object>() {
    Navigator.popUntil(this, (route) => route.isFirst);
  }

  Future<T?> push<T extends Object>(Widget widget, [String? name]) async {
    return Navigator.push<T>(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
        settings: RouteSettings(name: name),
      ),
    );
  }

  Future<T?> pushReplacement<T extends Object, TO extends Object>(
      Widget widget) async {
    return Navigator.pushReplacement<T, TO>(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  Future<T?> pushAndRemoveUntil<T extends Object>(
      Widget widget, bool Function(Route<dynamic> route) predicate) async {
    return Navigator.pushAndRemoveUntil<T>(
      this,
      MaterialPageRoute(builder: (context) => widget),
      predicate,
    );
  }

  void showSnackBar(String message, [Color? color = AppColors.primary]) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: color,
    ));
  }

  void showAlert(bool type, String content, [double? minHeigth]) {
    showDialog(
      context: this,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: AppColors.white,
        title: Center(
          child: Lottie.asset(
            type
                ? "assets/icon_json/icon_success.json"
                : "assets/icon_json/icon_warning.json",
            width: 80,
            height: 80,
          ),
        ),
        content: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: minHeigth ?? 50,
            maxHeight: 400,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                type ? 'Berhasil' : 'Ooops!',
                style: TextStyle(
                  color: type ? AppColors.green : AppColors.error,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Button.outlined(
            height: 40,
            width: 70,
            label: 'OK',
            fontSize: 16,
            color: AppColors.white,
            borderColor: type ? AppColors.green : AppColors.error,
            textColor: type ? AppColors.green : AppColors.error,
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  void showAlertFile(String title, String url, bool type) {
    showDialog(
      context: this,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: AppColors.white,
        title: Text(title),
        titleTextStyle: const TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 190,
            maxHeight: 400,
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: type
                ? SizedBox(
                    height: double.minPositive,
                    child: SfPdfViewer.network(url),
                  )
                : CachedNetworkImage(
                    imageUrl: url,
                    placeholder: (context, url) => Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ],
                    ),
                    errorWidget: (context, url, error) => Icon(
                      Icons.error,
                      size: 40,
                      color: AppColors.red,
                    ),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        actions: <Widget>[
          SizedBox(
            width: 100,
            child: Button.outlined(
              label: 'Unduh',
              color: AppColors.white,
              textColor: AppColors.primary,
              onPressed: () async {
                await UrlLauncer().launchInBrowser(Uri.parse(url), context);
              },
            ),
          ),
          SizedBox(
            width: 100,
            child: Button.outlined(
              label: 'Tutup',
              color: AppColors.white,
              textColor: AppColors.primary,
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
