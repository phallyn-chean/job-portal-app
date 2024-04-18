import 'package:flutter/material.dart';
import 'package:job_portal/models/job_model.dart';
import 'package:job_portal/modules/job_detail/widgets/button_detail_widget.dart';
import 'package:job_portal/modules/job_detail/widgets/card_description_detail_widget.dart';
import 'package:job_portal/modules/job_detail/widgets/card_job_detail_widget.dart';
import 'package:job_portal/modules/job_detail/widgets/card_job_role_widget.dart';
import 'package:job_portal/modules/job_detail/widgets/card_skill_detail_widget.dart';
import 'package:job_portal/modules/job_detail/widgets/head_detail_widget.dart';
import 'package:job_portal/utils/colors.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key, required this.jobModel});

  final JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const HeadDetailWidget(),
              CardJobDetailWidget(jobModel: jobModel),
              const SizedBox(height: 30),
              CardDescriptionDetailWidget(jobModel: jobModel),
              const SizedBox(height: 30),
              CardSkillDetailWidget(jobModel: jobModel),
              const SizedBox(height: 30),
              CardRoleDetailWidget(jobModel: jobModel)
            ],
          ),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const ButtonDetailWidget(),
    );
  }
}
