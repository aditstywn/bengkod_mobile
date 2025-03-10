import '../../../../core/extensions/build_context_ext.dart';
import 'change_password_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import 'web_view_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        children: [
          Card(
            color: AppColors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () => context.push(const ChangePasswordPage()),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Ubah Kata Sandi',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SpaceHeight(10),
          Card(
            color: AppColors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.push(WebViewPage(
                        title: 'Tentang Aplikasi',
                        url: 'https://bengkelkoding.dinus.ac.id/about',
                      ));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Tentang Aplikasi',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SpaceHeight(16),
                  GestureDetector(
                    onTap: () {
                      context.push(WebViewPage(
                        title: 'Syarat dan Ketentuan',
                        url: 'https://bengkelkoding.dinus.ac.id/terms',
                      ));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Syarat dan Ketentuan',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SpaceHeight(16),
                  GestureDetector(
                    onTap: () {
                      context.push(WebViewPage(
                        title: 'Kebijakan Privasi',
                        url: 'https://bengkelkoding.dinus.ac.id/privacy',
                      ));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Kebijakan Privasi',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
