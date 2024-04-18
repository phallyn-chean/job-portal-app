import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadHomeWidget extends StatelessWidget {
  const HeadHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello, Welcome",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.rocket,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
