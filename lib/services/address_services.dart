import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_parsing_in_flutter/model/address_model.dart';

Future<String> _loadAddressAsset() async {
  return await rootBundle.loadString('assets/address.json');
}

Future loadAddress() async {
  String jsonAddress = await _loadAddressAsset();
  final jsonResponse = json.decode(jsonAddress);
  Address address = Address.fromJson(jsonResponse);
  for (String row in address.streets){
    print("address : $row");
  }

}