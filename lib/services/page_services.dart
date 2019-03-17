import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/page_model.dart';

Future<String> _loadPageAsset() async {
  return await rootBundle.loadString('assets/page.json');
}

Future loadPage() async {
  String jsonAddress = await _loadPageAsset();
  final jsonResponse = json.decode(jsonAddress);
  Page page = Page.fromJson(jsonResponse);
  print(page.author.firstName);
//  for (String row in address.streets){
//    print("address : $row");
//  }

}