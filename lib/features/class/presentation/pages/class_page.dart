// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bengkod_mobile_app/features/class/presentation/pages/information_page.dart';
import 'package:flutter/material.dart';

import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';

import '../../../../core/config/app_color.dart';
import '../widgets/class_card.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
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
                  'Class',
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
            ClassCard(
              onTap: () {
                context.push(const InformationPage());
              },
              day: 'Monday',
              title: 'Flutter Class',
              description: 'Learn Flutter with Bengkod',
              time: '08:00 - 10:00',
            ),
            const SpaceHeight(16),
            ClassCard(
              onTap: () {},
              day: 'Tuesday',
              title: 'Dart Class',
              description:
                  'Dicourse ini kita akan belajar Mobile Developer menggunakan Flutter',
              time: '08:00 - 10:00',
            ),
          ],
        ),
      ),
    );
  }
}
