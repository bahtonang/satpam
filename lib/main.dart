import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:satpam/coba.dart';
import 'package:satpam/login.dart';
import 'package:satpam/userpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) {
          return Login();
        }),
    GoRoute(
        path: '/',
        name: 'main_page',
        builder: (context, state) {
          return UserPage();
        },
        routes: [
          GoRoute(
              path: 'about',
              name: 'about',
              builder: (context, state) {
                return MyWidget();
              }),
        ]),
  ], initialLocation: '/login', debugLogDiagnostics: true, routerNeglect: true);
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
