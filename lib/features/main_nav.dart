import '../core/components/spaces.dart';
import '../core/config/app_color.dart';
import 'presence/presentation/pages/presence_page.dart';
import 'profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home/presentation/pages/home_page.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PresencePage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            backgroundColor: AppColors.white,
            // showUnselectedLabels: false,
            // showSelectedLabels: false,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.grey,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    if (_selectedIndex == 0)
                      Container(
                        height: 6,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    const SpaceHeight(4),
                    SvgPicture.asset(
                      'assets/icons/icon_home.svg',
                      color: _selectedIndex == 0
                          ? AppColors.primary
                          : AppColors.grey,
                    ),
                  ],
                ),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    if (_selectedIndex == 1)
                      Container(
                        height: 6,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    const SpaceHeight(4),
                    SvgPicture.asset(
                      'assets/icons/icon_finger.svg',
                      color: _selectedIndex == 1
                          ? AppColors.primary
                          : AppColors.grey,
                    ),
                  ],
                ),
                label: 'Kehadiran',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    if (_selectedIndex == 2)
                      Container(
                        height: 6,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    const SpaceHeight(4),
                    SvgPicture.asset(
                      'assets/icons/icon_profile.svg',
                      color: _selectedIndex == 2
                          ? AppColors.primary
                          : AppColors.grey,
                    ),
                  ],
                ),
                label: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
