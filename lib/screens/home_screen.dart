import 'package:admin_helpdesk/components/card_horizontal.dart';
import 'package:admin_helpdesk/components/card_vertical.dart';
import 'package:admin_helpdesk/data/course.dart';
import 'package:admin_helpdesk/screens/course_detail_screen.dart';
import 'package:admin_helpdesk/screens/course_screen.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void navigateToCourseDetails(BuildContext context, Course course) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseDetailScreen(course: course),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 800),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1000),
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      'Selamat Datang, Sahabat\nHebat',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1200),
                  child: Text(
                    'Popular Course',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1300),
                  child: SizedBox(
                    height: 250,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        final course = courses[index];
                        return HorizontalCard(
                          course: course,
                          onTap: () => navigateToCourseDetails(
                            context,
                            course,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 1400),
                  child: Text(
                    'Articles',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 1500),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        final course = courses[index];
                        return VerticalCard(
                          course: course,
                          onTap: () => navigateToCourseDetails(
                            context,
                            course,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
