import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/product_model.dart';

Future<String> _loadProductAssets() async{
  return await rootBundle.loadString('assets/product.json');
}

Future loadProduct() async{
  String jsonString = await _loadProductAssets();
  final jsonResponse = jsonDecode(jsonString);
  Product  product = Product.fromJson(jsonResponse);
  for(Images image in product.images){
    print(image.imageName);
  }
//  print(product.name);
}