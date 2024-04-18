import 'package:flutter/material.dart';
import 'package:job_portal/models/job_model.dart';
import 'package:mobx/mobx.dart';
part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  @observable
  List<JobModel>? listFilter = [];
  List<JobModel>? listJobs = [];

  @observable
  String search = "";

  @observable
  TextEditingController controllerInput = TextEditingController();

  @action
  void setFilter(String value) {
    listFilter = [];
    for (var element in listJobs!) {
      if (element.title.toUpperCase().contains(value.toUpperCase()) || element.subtitle.toUpperCase().contains(value.toUpperCase()) || element.location.toUpperCase().contains(value.toUpperCase())) {
        listFilter!.add(element);
      }
    }
  }
}
