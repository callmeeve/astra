import 'package:admin_helpdesk/data/course.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalCard extends StatelessWidget {
  final Course course;
  final Function onTap;

  const VerticalCard({super.key, required this.course, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    course.imageUrl,
                    width: 150,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Yayasan Dharma Bhakti Astra",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                course.name,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
