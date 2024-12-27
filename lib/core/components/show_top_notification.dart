import 'package:flutter/material.dart';

import '../config/app_color.dart';

class ShowTopNotification {
  OverlayEntry? _overlayEntry;

  void show(BuildContext context, String message) {
    // Hapus notifikasi sebelumnya jika masih aktif
    _overlayEntry?.remove();

    // Buat notifikasi baru
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 100,
        left: 90,
        right: 90,
        child: Material(
          color: Colors.transparent,
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     _removeOverlay();
                //   },
                //   child: const Icon(
                //     Icons.close,
                //     color: Colors.white,
                //     size: 16,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );

    // Masukkan notifikasi overlay ke layar
    Overlay.of(context).insert(_overlayEntry!);

    // Hapus notifikasi setelah 2 detik
    Future.delayed(const Duration(seconds: 3), () {
      _removeOverlay();
    });
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
