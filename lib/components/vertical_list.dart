// import 'dart:io';
// import 'package:dio/dio.dart';
import 'package:admin_helpdesk/data/lpb.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class VerticalList extends StatefulWidget {
  final LPB lpb;
  VerticalList({Key? key, required this.lpb}) : super(key: key);

  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  // bool _downloading = false;
  // bool _downloaded = false;

  // Future<void> _downloadFile() async {
  //   setState(() {
  //     _downloading = true;
  //   });

  //   Dio dio = Dio();
  //   String fileName = widget.lpb.name.split('/').last;

  //   try {
  //     Directory appDocumentsDirectory =
  //         await getApplicationDocumentsDirectory();
  //     String filePath = '${appDocumentsDirectory.path}/$fileName';

  //     await dio.download(widget.lpb.fileUrl, filePath);

  //     print('File downloaded to: $filePath');
  //     setState(() {
  //       _downloaded = true;
  //     });

  //     // Show the transparent dialog containing the file name and path
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           backgroundColor: whiteColor,
  //           content: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               const Text(
  //                 "File downloaded successfully!",
  //                 style: TextStyle(
  //                   color: blackColor,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //               const SizedBox(height: 10),
  //               Text(
  //                 "File Name: $fileName",
  //                 style: const TextStyle(color: blackColor),
  //               ),
  //               Text(
  //                 "Saved Path: $filePath",
  //                 style: const TextStyle(color: blackColor),
  //               ),
  //               const SizedBox(height: 20),
  //               ElevatedButton(
  //                 onPressed: () {
  //                   Navigator.of(context).pop(); // Close the dialog
  //                 },
  //                 child: const Text("OK"),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     );
  //   } catch (e) {
  //     print('Error while downloading file: $e');
  //   } finally {
  //     setState(() {
  //       _downloading = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final Uri file = Uri.parse(widget.lpb.fileUrl);

    Future<void> _fileUrl() async {
      if (!await launchUrl(file)) {
        throw Exception('Could not launch $file');
      }
    }

    return InkWell(
      onTap: _fileUrl,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 500,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: primaryColor, width: 1.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Icon(
                CarbonIcons.document,
                color: primaryColor,
                size: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yayasan Dharma Bhakti Astra",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.lpb.name,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // AnimatedSwitcher(
              //   duration: const Duration(milliseconds: 300),
              //   switchInCurve: Curves.easeInOut,
              //   switchOutCurve: Curves.easeInOut,
              //   transitionBuilder: (Widget child, Animation<double> animation) {
              //     return ScaleTransition(
              //       scale: animation,
              //       child: child,
              //     );
              //   },
              //   child: _downloading
              //       ? const CircularProgressIndicator(
              //           valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
              //         )
              //       : _downloaded
              //           ? const Icon(
              //               Icons.done,
              //               color: primaryColor,
              //             )
              //           : IconButton(
              //               onPressed: _downloadFile,
              //               icon: const Icon(
              //                 CarbonIcons.download,
              //                 color: primaryColor,
              //               ),
              //             ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
