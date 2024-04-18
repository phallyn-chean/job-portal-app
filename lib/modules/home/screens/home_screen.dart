import 'package:flutter/material.dart';
import 'package:job_portal/models/job_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:job_portal/modules/home/stores/list_store.dart';
import 'package:job_portal/modules/home/stores/menu_store.dart';
import 'package:job_portal/modules/home/widgets/card_job_widget.dart';
import 'package:job_portal/modules/home/widgets/head_home_widget.dart';
import 'package:job_portal/modules/home/widgets/menu_filter_widget.dart';
import 'package:job_portal/modules/home/widgets/text_filter_widget.dart';
import 'package:job_portal/modules/home/widgets/title_find_widget.dart';
import 'package:job_portal/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Stream<List<JobModel>> readJobs() {
    return FirebaseFirestore.instance.collection('jobs').snapshots().map((snapshot) {
      return snapshot.docs.map((e) => JobModel.fromJson(e.data())).toList();
    });
  }

  final menuStore = MenuStore();
  final listStore = ListStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadHomeWidget(),
                const TitleFindWidget(),
                MenuFilterWidget(menuStore: menuStore),
                TextFormFilterWidget(size: size, listStore: listStore),
                SizedBox(
                  height: size.height * 0.62,
                  child: StreamBuilder<List<JobModel>>(
                    stream: readJobs(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        listStore.listJobs = snapshot.data;
                        if (listStore.listFilter!.isEmpty) {
                          listStore.listFilter = listStore.listJobs;
                        }
                        return CardJobWidget(
                          size: size,
                          listStore: listStore,
                        );
                      } else {
                        return const Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
