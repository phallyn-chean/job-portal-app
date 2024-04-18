import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/models/job_model.dart';
import 'package:job_portal/utils/colors.dart';

class CardJobDetailWidget extends StatelessWidget {
  const CardJobDetailWidget({super.key, required this.jobModel});

  final JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: jobModel.color,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              jobModel.title,
              style: GoogleFonts.poppins(
                color: jobModel.textColor,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              jobModel.subtitle,
              style: GoogleFonts.poppins(
                color: jobModel.textColor,
                fontSize: 16,
              ),
            ),
            leading: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.people,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: jobModel.secondaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(color: jobModel.textColor, width: 1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: jobModel.textColor,
                              size: 20,
                            ),
                          ),
                          Text(
                            jobModel.location,
                            style: GoogleFonts.poppins(
                              color: jobModel.textColor,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                          color: jobModel.secondaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: jobModel.textColor, width: 1),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.school,
                                color: jobModel.textColor,
                                size: 20,
                              ),
                            ),
                            Text(
                              "${jobModel.experience} years",
                              style: GoogleFonts.poppins(color: jobModel.textColor, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: jobModel.secondaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(color: jobModel.textColor, width: 1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.schedule,
                              color: jobModel.textColor,
                              size: 20,
                            ),
                          ),
                          Text(
                            jobModel.timeJob,
                            style: GoogleFonts.poppins(color: jobModel.textColor, fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.update,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Post ${DateTime.now().day - jobModel.date.day} day ago",
                      style: GoogleFonts.poppins(color: Colors.black),
                    )
                  ],
                ),
                Text(
                  "\$${jobModel.salary} K/mo",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
