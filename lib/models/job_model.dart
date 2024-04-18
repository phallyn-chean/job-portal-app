import 'dart:convert';

import 'package:flutter/material.dart';

class JobModel {
  String title;
  String subtitle;
  String timeJob;
  String salary;
  String location;
  String experience;
  String description;

  String image;
  String completeDescription;
  String role;
  List<String> skills;

  DateTime date;
  Color color;
  Color secondaryColor;
  Color textColor;

  JobModel({
    required this.title,
    required this.subtitle,
    required this.timeJob,
    required this.salary,
    required this.location,
    required this.experience,
    required this.description,
    required this.image,
    required this.completeDescription,
    required this.role,
    required this.skills,
    required this.date,
    required this.color,
    required this.secondaryColor,
    required this.textColor,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      timeJob: json['timeJob'] as String,
      salary: json['salary'] as String,
      location: json['location'] as String,
      experience: json['experience'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      completeDescription: json['completeDescription'] as String,
      role: json['role'] as String,
      skills: List.from(json['skills']),
      date: DateTime.parse(json['date']),
      color: Color(int.parse('0xff${json['color']}')),
      secondaryColor: Color(int.parse('0xff${json['secondaryColor']}')),
      textColor: Color(int.parse('0xff${json['textColor']}')),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'timeJob': timeJob,
      'salary': salary,
      'location': location,
      'experience': experience,
      'description': description,
      'image': image,
      'completeDescription': completeDescription,
      'role': role,
      'skills': skills,
      'date': date,
    };
  }

  String toJson() {
    return json.encode(toMap());
  }
}
