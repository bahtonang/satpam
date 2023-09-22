import 'package:satpam/launcher.dart';
import 'package:flutter/material.dart';
import 'package:satpam/userpage.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Satpam',
      home: Launcher(),
      //home: UserPage(),
      routes: <String, WidgetBuilder>{
        //  '/adminpage': (BuildContext context) => new AdminPage(),
      },
    ),
  );
}
