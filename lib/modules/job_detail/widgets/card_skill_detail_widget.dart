import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/models/job_model.dart';

class CardSkillDetailWidget extends StatelessWidget {
  const CardSkillDetailWidget({super.key, required this.jobModel});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xff404040),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Skill & Requirement",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: jobModel.skills
                .map((e) => Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          color: Colors.grey,
                          size: 10,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          e,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
