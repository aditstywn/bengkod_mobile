import 'package:flutter/material.dart';

import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../widgets/assignment_card.dart';
import 'detail_assignment_page.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          children: [
            Row(
              children: [
                TextButton.icon(
                  onPressed: context.pop,
                  label: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grey,
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.grey,
                    size: 16,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Assignment',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Spacer(),
              ],
            ),
            const SpaceHeight(16),
            AssignmentCard(
              onTap: () {
                context.push(
                  const DetailAssignmentPage(
                    questionFile: true,
                    uploadFile: false,
                  ),
                );
              },
              title:
                  'Studi Kasus Mobile Developer - Ready to Upload Assignment Cobalah untuk membuat aplikasi mobile sederhana dengan menggunakan Flutter',
              subtitle: 'Bengkel Koding Mobile - Review',
              start: ' 12 Oct 2024. 18.00 ',
              deadline: ' 12 Oct 2024. 18.00 ',
              status: 'Belum Dikumpulkan',
              color: AppColors.pink,
              colorBg: AppColors.assignBgPink,
            ),
            AssignmentCard(
              onTap: () {
                context.push(
                  const DetailAssignmentPage(
                    questionFile: true,
                    uploadFile: true,
                  ),
                );
              },
              title:
                  'Studi Kasus Mobile Developer - Ready to Upload Assignment Cobalah untuk membuat aplikasi mobile sederhana dengan menggunakan Flutter',
              subtitle: 'Bengkel Koding Mobile - Review',
              start: ' 12 Oct 2024. 18.00 ',
              deadline: '12 Oct 2024. 18.00 ',
              status: 'Sudah Dikumpulkan',
              color: AppColors.assignGreen,
              colorBg: AppColors.assignBgGreen,
            ),
          ],
        ),
      ),
    );
  }
}
