import 'package:flutter/material.dart';
import 'package:landing_page_scroll/router/router.dart';

void main() {
  Flurouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Scroll App',
      initialRoute: '/home',
      onGenerateRoute: Flurouter.generator,
    );
  }
}
