import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/bakery_model.dart';

Future<String> _loadBakeryAssets() async {
  return await rootBundle.loadString('assets/bakery.json');
}

Future loadBakery() async {
  String jsonAddress = await _loadBakeryAssets();
  final jsonResponse = json.decode(jsonAddress);
  Bakery bakery = Bakery.fromJson(jsonResponse);
  print(bakery.type);
}