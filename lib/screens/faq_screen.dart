import 'package:admin_helpdesk/theme.dart';
import 'package:animate_do/animate_do.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    final Uri video = Uri.parse(
        'https://drive.google.com/file/d/14CcYkTtbpLnkSuxqJdhaPs_NbhU-ZYm2/view?usp=drive_link');
    final Uri pdf = Uri.parse(
        'https://drive.google.com/file/d/1XkfpUHQb4Wb3KNtXIXROPXh2CWGD2CCP/view?usp=drive_link');
    final Uri ppt = Uri.parse(
        'https://docs.google.com/presentation/d/1WMI59UhH2xbgjkThv2NX7oPRnhMUCPf8/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true');
    final Uri ppt_1 = Uri.parse(
        'https://docs.google.com/presentation/d/1mtjUoyX-1BHfBSzPEMHz5LDwoLqUZJVL/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true');

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _videoUrl() async {
      if (!await launchUrl(video)) {
        throw Exception('Could not launch $video');
      }
    }

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _docUrl() async {
      if (!await launchUrl(pdf)) {
        throw Exception('Could not launch $pdf');
      }
    }

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _pptUrl() async {
      if (!await launchUrl(ppt)) {
        throw Exception('Could not launch $ppt');
      }
    }

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _ppt1Url() async {
      if (!await launchUrl(ppt_1)) {
        throw Exception('Could not launch $ppt_1');
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/11.jpg",
                fit: BoxFit.cover,
              ),
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
                      "Registrasi Ulang Zahir",
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
                      "Registrasi ulang pada aplikasi Zahir mengacu pada proses pembaruan atau perpanjangan lisensi aplikasi Zahir Accounting. Registrasi ulang diperlukan untuk memastikan bahwa lisensi aplikasi Zahir Anda tetap aktif dan berfungsi dengan baik setelah melewati periode berlangganan tertentu atau berakhirnya masa lisensi.",
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
                                      "PDF",
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
                                      "PPT (Register Ulang Zahir (Zira Unregister))",
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
                            delay: const Duration(milliseconds: 1000),
                            child: InkWell(
                              onTap: _ppt1Url,
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
                                      "PPT (Register Ulang Zahir (Zira Expired))",
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
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100 / 1.2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: _videoUrl,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                primaryColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ), // Ubah radius sesuai kebutuhan
                ),
              ),
            ),
            child: Text(
              "Tonton Video Sekarang",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
