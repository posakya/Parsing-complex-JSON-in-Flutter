import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/sample_menu_model.dart';

Future<String> _loadMenuAsset() async {
  return await rootBundle.loadString('assets/sample_menu.json');
}

Future<Menu> loadMenu() async {
  String jsonAddress = await _loadMenuAsset();
  final jsonResponse = json.decode(jsonAddress);
  Menu menu = Menu.fromJson(jsonResponse);
//  for (Data row in menu.data){
//    print(row.mCatName);
//  }
//  List<Products> products = [];
//
//  for(var data in menu.data){
//        for(Products products1 in data.products){
//          products.add(products1);
//        }
////    products.add(data.products);
//  }
  return menu;
}