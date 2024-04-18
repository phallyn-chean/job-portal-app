import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/modules/home/screens/home_screen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        width: size.width * 0.8,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff5424FD),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start Searching",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.arrow_right,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
