import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/assignment/presentation/pages/assignment_page.dart';
import 'package:bengkod_mobile_app/features/class/presentation/pages/class_page.dart';
import 'package:bengkod_mobile_app/features/courses/presentation/pages/courses_page.dart';
import 'package:bengkod_mobile_app/features/settings/presentation/pages/settings_page.dart';
import 'package:flutter/material.dart';

import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:bengkod_mobile_app/core/config/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assignment/presentation/widgets/assignment_card.dart';
import '../widgets/menu_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon_home.svg',
                  color: AppColors.primary,
                ),
                const SpaceWidth(10),
                const Text(
                  'Home',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SpaceHeight(10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 97,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.white,
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.grey,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/DSCF2616.JPG',
                          fit: BoxFit.cover,
                          width: 60,
                          height: 60,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  const SpaceWidth(20),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adit Stywn',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'A11.2022.14654',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            ),
            const SpaceHeight(20),
            const Text(
              'Menu Information',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SpaceHeight(10),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 12,
                childAspectRatio: 2.3,
              ),
              children: [
                MenuButton(
                  onTap: () {
                    context.push(const ClassPage());
                  },
                  color: AppColors.primary,
                  title: 'Class',
                  icon: Icons.class_,
                ),
                MenuButton(
                  onTap: () {
                    context.push(const AssignmentPage());
                  },
                  color: AppColors.assignment,
                  title: 'Assignment',
                  icon: Icons.assignment_outlined,
                ),
                MenuButton(
                  onTap: () {
                    context.push(const CoursesPage());
                  },
                  color: AppColors.course,
                  title: 'Courses',
                  icon: Icons.menu_book_rounded,
                ),
                MenuButton(
                  onTap: () {
                    context.push(const SettingsPage());
                  },
                  color: AppColors.setting,
                  title: 'Setting',
                  icon: Icons.settings,
                ),
              ],
            ),
            const SpaceHeight(20),
            const Text(
              'Your Progress',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SpaceHeight(10),
            Card(
              elevation: 1,
              color: AppColors.white,
              child: ListTile(
                title: const Text(
                  'Flutter Development',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Dart Programming Language',
                  style: TextStyle(
                    color: AppColors.grey,
                  ),
                ),
                trailing: const Text(
                  '80%',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 14,
                  ),
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle 24.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 1,
              color: AppColors.white,
              child: ListTile(
                title: const Text(
                  'Flutter Development',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Dart Programming Language',
                  style: TextStyle(
                    color: AppColors.grey,
                  ),
                ),
                trailing: const Text(
                  '80%',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 14,
                  ),
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle 24.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            const SpaceHeight(20),
            const Text(
              'Latest Assignment',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SpaceHeight(10),
            AssignmentCard(
              onTap: () {},
              title:
                  'Studi Kasus Mobile Developer - Ready to Upload Assignment Cobalah untuk membuat aplikasi mobile sederhana dengan menggunakan Flutter',
              subtitle: 'Bengkel Koding Mobile - Review',
              start: ' 12 Oct 2024. 18.00 ',
              deadline: ' 12 Oct 2024. 18.00 ',
              status: 'Belum Dikumpulkan',
              color: AppColors.pink,
              colorBg: AppColors.assignBgPink,
            ),
            const SpaceHeight(20),
          ],
        ),
      ),
    );
  }
}
