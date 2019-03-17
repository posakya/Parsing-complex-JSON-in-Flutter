import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/photo_model.dart';

Future<String> _loadPhotosAssets() async {
  return await rootBundle.loadString('assets/photo.json');
}

Future loadPhotos() async {
  String jsonString = await _loadPhotosAssets();
  final jsonResponse = json.decode(jsonString);
  print(jsonResponse);
  PhotosList photosList = PhotosList.fromJson(jsonResponse);
  print(photosList.photos[0].title);

}