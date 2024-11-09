import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../widgets/courses_card.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
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
                  onPressed: () => context.pop(),
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
                  'Courses',
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CoursesCard(
                    color: AppColors.pink,
                    icon: 'assets/icons/icon_hp.svg',
                    title: 'Mobile',
                    subtitle: 'Development',
                  ),
                  SpaceWidth(10),
                  CoursesCard(
                    color: AppColors.course,
                    icon: 'assets/icons/icon_hp.svg',
                    title: 'Data Science',
                    subtitle: 'Pemula',
                  ),
                  SpaceWidth(10),
                ],
              ),
            ),
            const SpaceHeight(20),
            Card(
              color: AppColors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      'Persiapan Belajar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/icon_checkist2.svg',
                      width: 18,
                    ),
                    title: const Text(
                      'Konsep Dasar Bahasa Pemograman Dart',
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/icon_checkist2.svg',
                      width: 18,
                    ),
                    title: const Text(
                      'Pengenalan Flutter',
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 9,
                    ),
                    title: const Text(
                      'Dasar Flutter',
                    ),
                  ),
                ],
              ),
            ),
            const SpaceHeight(20),
            Card(
              color: AppColors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      'Konsep',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/icon_checkist2.svg',
                      width: 18,
                    ),
                    title: const Text(
                      'User Interface',
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 9,
                    ),
                    title: const Text(
                      'Routing & Navigation',
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 9,
                    ),
                    title: const Text(
                      'Pengujian & Debugging',
                    ),
                  ),
                ],
              ),
            ),
            const SpaceHeight(20),
            Card(
              color: AppColors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      'Studi Kasus',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 9,
                    ),
                    title: const Text(
                      'Proyek 1: Aplikasi Chat',
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 9,
                    ),
                    title: const Text(
                      'Proyek 2: Aplikasi E-Commerce',
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 9,
                    ),
                    title: const Text(
                      'Study Case: Aplikasi Pemesanan Makanan',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
