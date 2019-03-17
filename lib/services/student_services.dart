import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/student_model.dart';


Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('assets/student.json');
}


Future<Student> loadStudent() async {
  String jsonString = await _loadAStudentAsset();
  final jsonResponse = json.decode(jsonString);
  Student student = new Student.fromJson(jsonResponse);
  return student;
}