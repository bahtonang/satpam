import 'dart:async';
import 'package:satpam/login.dart';
import 'package:satpam/userpage.dart';
import 'package:flutter/material.dart';

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 2);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return Login();
        // return UserPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: new Image.asset(
          "assets/images/launcher.png", fit: BoxFit.cover,
          // height: 400.0,
          // width: 400.0,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
