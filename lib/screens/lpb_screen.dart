import 'package:admin_helpdesk/components/vertical_list.dart';
import 'package:admin_helpdesk/data/lpb.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LPBScreen extends StatefulWidget {
  const LPBScreen({super.key});

  @override
  State<LPBScreen> createState() => _LPBScreenState();
}

class _LPBScreenState extends State<LPBScreen> {
  String searchQuery = '';
  List<LPB> filteredLPBs = [];

  void filterCourses(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredLPBs = List.from(lpbs);
      } else {
        filteredLPBs = lpbs.where((lpb) {
          return lpb.name.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    filteredLPBs = List.from(lpbs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          "LPB",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: blackColor,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
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
                      hintText: "Cari LPB",
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
                            child: SvgPicture.asset("assets/icons/Filter.svg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: filteredLPBs.length,
                    itemBuilder: (context, index) {
                      final lpb = filteredLPBs[index];
                      return VerticalList(
                        lpb: lpb,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
