import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleFindWidget extends StatelessWidget {
  const TitleFindWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Find Jobs',
      style: GoogleFonts.poppins(fontSize: 40, color: Colors.white),
    );
  }
}
