import 'package:admin_helpdesk/screens/faq_screen.dart';
import 'package:admin_helpdesk/screens/home_screen.dart';
import 'package:admin_helpdesk/screens/course_screen.dart';
import 'package:admin_helpdesk/screens/lpb_screen.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CourseScreen(),
    const LPBScreen(),
    const FAQScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 8.0,
            ),
            child: GNav(
              gap: 6,
              activeColor: primaryColor,
              color: whiteColor,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              duration: const Duration(milliseconds: 500),
              tabBackgroundColor: whiteColor,
              tabs: const [
                GButton(
                  icon: CarbonIcons.home,
                  text: 'Beranda',
                ),
                GButton(
                  icon: CarbonIcons.document,
                  text: 'Materi',
                ),
                GButton(
                  icon: CarbonIcons.table_built,
                  text: 'LPB',
                ),
                GButton(
                  icon: CarbonIcons.book,
                  text: 'FAQ',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
