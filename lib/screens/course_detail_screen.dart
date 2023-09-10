import 'package:admin_helpdesk/components/custom_video_player.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:animate_do/animate_do.dart';
import 'package:admin_helpdesk/data/course.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetailScreen extends StatefulWidget {
  final Course course;

  const CourseDetailScreen({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Uri docx = Uri.parse(widget.course.docUrl);
    final Uri ppt = Uri.parse(widget.course.pptUrl);

    // ignore: no_leading_underscores_for_local_identifiers

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _docUrl() async {
      if (!await launchUrl(docx)) {
        throw Exception('Could not launch $docx');
      }
    }

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _pptUrl() async {
      if (!await launchUrl(ppt)) {
        throw Exception('Could not launch $ppt');
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomVideoPlayer(
              videoUrl: widget.course.videoUrl,
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 5),
                  child: FadeInUp(
                    delay: const Duration(milliseconds: 700),
                    child: Text(
                      widget.course.name,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 15),
                  child: FadeInUp(
                    delay: const Duration(milliseconds: 700),
                    child: Text(
                      "Yayasan Dharma Bhakti Astra",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 15),
                  child: FadeInUp(
                    delay: const Duration(milliseconds: 700),
                    child: Text(
                      widget.course.description,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 1000),
                        child: Text(
                          "Download Materi",
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInUp(
                            delay: const Duration(milliseconds: 800),
                            child: InkWell(
                              onTap: _docUrl,
                              child: ClipRRect(
                                child: Container(
                                  width: 500,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 10,
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 1.2,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child: Text(
                                      "DOCX",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FadeInUp(
                            delay: const Duration(milliseconds: 900),
                            child: InkWell(
                              onTap: _pptUrl,
                              child: ClipRRect(
                                child: Container(
                                  width: 500,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 10,
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 1.2,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child: Text(
                                      "PPT",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
