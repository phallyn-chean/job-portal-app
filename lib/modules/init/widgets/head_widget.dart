import 'package:flutter/material.dart';
import 'package:job_portal/modules/init/widgets/button_widget.dart';
import 'package:job_portal/modules/init/widgets/title_widget.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TitleWidget(),
          ButtonWidget(size: size),
        ],
      ),
    );
  }
}
