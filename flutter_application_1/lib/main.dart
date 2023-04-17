import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

final router = AppRouter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Dio and GetX Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
