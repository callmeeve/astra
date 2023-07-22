import 'package:admin_helpdesk/components/card_vertical.dart';
import 'package:admin_helpdesk/components/custom_sliders.dart';
import 'package:admin_helpdesk/data/course.dart';
import 'package:admin_helpdesk/screens/course_detail_screen.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  String searchQuery = '';
  List<Course> filteredCourses = [];

  void navigateToCourseDetails(BuildContext context, Course course) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseDetailScreen(course: course),
      ),
    );
  }

  void filterCourses(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredCourses = List.from(courses);
      } else {
        filteredCourses = courses.where((course) {
          return course.name.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    filteredCourses = List.from(courses);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          // padding: EdgeInsets.zero,
          children: [
            const CustomSlider(
              items: [
                "assets/images/4.jpg",
                "assets/images/10.jpg",
                "assets/images/7.jpg",
                "assets/images/5.jpg",
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    child: TextFormField(
                      onChanged: (value) => filterCourses(value),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: whiteColor,
                        hintText: "Search courses",
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(14),
                          child: Icon(
                            CarbonIcons.search,
                            color: primaryColor,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16 / 2,
                          ),
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child:
                                  SvgPicture.asset("assets/icons/Filter.svg"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true, // This will remove unnecessary spacing
                      itemCount: filteredCourses.length,
                      itemBuilder: (context, index) {
                        final course = filteredCourses[index];
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
