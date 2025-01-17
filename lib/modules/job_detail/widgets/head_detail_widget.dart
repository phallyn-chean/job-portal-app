import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadDetailWidget extends StatelessWidget {
  const HeadDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_left,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                "Details",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  letterSpacing: 1,
                ),
              )
            ],
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.rocket,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
