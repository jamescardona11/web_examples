import 'package:flutter/material.dart';
import 'package:landing_page_scroll/router/router.dart';
import 'package:provider/provider.dart';

import 'providers/page_provider.dart';

void main() {
  Flurouter.configureRoutes();
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => PageProvider(),
      ),
    ], child: MyApp());
  }
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
