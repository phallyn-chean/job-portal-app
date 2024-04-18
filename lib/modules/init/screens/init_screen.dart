import 'package:flutter/material.dart';
import 'package:job_portal/utils/colors.dart';
import 'package:job_portal/modules/init/widgets/head_widget.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeadWidget(size: size),
          const Expanded(child: SizedBox()),
          Image.asset('assets/images/backgroundInit.png'),
        ],
      )),
    );
  }
}
