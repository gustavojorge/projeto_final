import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:untitled/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser ,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
