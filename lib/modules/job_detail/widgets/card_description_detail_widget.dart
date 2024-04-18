import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/models/job_model.dart';

class CardDescriptionDetailWidget extends StatelessWidget {
  const CardDescriptionDetailWidget({super.key, required this.jobModel});

  final JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color(0xff2b2b2b),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xff404040),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Job Description",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Text(
            jobModel.description,
            style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
