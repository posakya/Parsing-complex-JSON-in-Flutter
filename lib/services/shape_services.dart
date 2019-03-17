import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/shape_model.dart';

Future<String> _loadShapeAssets() async{
  return await rootBundle.loadString('assets/shape.json');
}

Future loadShape() async{
  String jsonShape = await _loadShapeAssets();
  final jsonResponse = jsonDecode(jsonShape);
  Shape shape = Shape.fromJson(jsonResponse);
  print(shape.property.width+shape.property.breadth);

}