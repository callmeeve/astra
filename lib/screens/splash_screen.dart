import 'package:admin_helpdesk/components/bottom_bar.dart';
import 'package:admin_helpdesk/theme.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Center(
        child: Text(
          "Admin Helpdesk",
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      nextScreen: const BottomBar(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      backgroundColor: whiteColor,
    );
  }
}
