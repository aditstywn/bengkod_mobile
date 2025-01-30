import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/settings/presentation/pages/change_password_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';

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
        title: const Text('Settings'),
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
            child: ListTile(
              onTap: () {
                context.push(const ChangePasswordPage());
              },
              title: const Text(
                'Change Password',
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
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
            child: const Column(
              children: [
                ListTile(
                  title: Text(
                    'About Us',
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
