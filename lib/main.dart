import 'package:flutter/material.dart';
import 'package:json_parsing_in_flutter/services/student_services.dart';
import 'package:json_parsing_in_flutter/services/shape_services.dart';
import 'package:json_parsing_in_flutter/services/address_services.dart';
import 'package:json_parsing_in_flutter/services/product_services.dart';
import 'package:json_parsing_in_flutter/services/photo_services.dart';
import 'package:json_parsing_in_flutter/services/bakery_services.dart';
import 'package:json_parsing_in_flutter/services/college_services.dart';
import 'package:json_parsing_in_flutter/services/page_services.dart';
import 'package:json_parsing_in_flutter/services/sample_menu_services.dart';
import 'package:json_parsing_in_flutter/model/student_model.dart';
import 'package:json_parsing_in_flutter/model/sample_menu_model.dart';

void main() {
  runApp(MyApp());
//  loadStudent();
//  loadAddress();
//  loadShape();
//  loadProduct();
//  loadPhotos();
//  loadBakery();
//  loadCollege();
//  loadPage();
//  loadMenu();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Json Parsing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var menuName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<Menu>(
          future: loadMenu(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              for (var row in snapshot.data.data) {
                menuName = '${row.mCatName}';
              }

              if (snapshot.hasError) {
                return Text("Error");
              }

              return Text('Title from Post JSON : \n${menuName}');
            } else
              return CircularProgressIndicator();
          }),
    );
  }
}
