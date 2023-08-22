import 'dart:io';
import 'package:admin_helpdesk/data/lpb.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

class FileStorage {
  static Future<String> getExternalDocumentPath() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    Directory _directory = Directory("");
    if (Platform.isAndroid) {
      _directory = Directory("/storage/emulated/0/Download");
    } else {
      _directory = await getApplicationDocumentsDirectory();
    }

    final exPath = _directory.path;
    await Directory(exPath).create(recursive: true);
    return exPath;
  }

  static Future<String> get _localPath async {
    final String directory = await getExternalDocumentPath();
    return directory;
  }

  static Future<void> downloadAsset(String assetPath, String fileName) async {
    final ByteData data = await rootBundle.load(assetPath);
    final List<int> bytes = data.buffer.asUint8List();

    final path = await _localPath;
    final file = File('$path/$fileName');

    try {
      await file.writeAsBytes(bytes);
      print("File saved to: ${file.path}");
    } catch (e) {
      print("Error saving file: $e");
    }
  }
}

class VerticalList extends StatefulWidget {
  final LPB lpb;
  VerticalList({Key? key, required this.lpb}) : super(key: key);

  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  void _downloadFile(String assetPath, String fileName) {
    FileStorage.downloadAsset(assetPath, fileName);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'File $fileName downloaded successfully',
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _downloadFile(widget.lpb.fileUrl, widget.lpb.name);
      },
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
