import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/college_model.dart';

Future<String> _loadCollegeAssets() async {
  return await rootBundle.loadString('assets/college.json');
}

Future loadCollege() async {
  String jsonAddress = await _loadCollegeAssets();
  final jsonResponse = json.decode(jsonAddress);
  College college = College.fromJson(jsonResponse);
  for(Subjects subjects in college.subjects){
    print(subjects.subjectName);
  }

}