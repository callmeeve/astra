import 'package:admin_helpdesk/data/lpb.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class VerticalList extends StatelessWidget {
  final LPB lpb;

  const VerticalList({super.key, required this.lpb});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(lpb.fileUrl);

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _fileUrl() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return GestureDetector(
      onTap: _fileUrl,
      child: Column(
        children: [
          ClipRRect(
            child: Container(
              width: 500,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
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
                  horizontal: 20.0,
                ),
                child: Row(
                  children: [
                    const Icon(
                      CarbonIcons.xls,
                      color: primaryColor,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
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
                                    lpb.name,
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
