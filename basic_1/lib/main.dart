import 'package:basic_1/provider/locator.dart';
import 'package:basic_1/services/navigator_service.dart';
import 'package:basic_1/ui/layout/main_layout_page.dart';
import 'package:basic_1/ui/page/counter_page.dart';
import 'package:basic_1/ui/page/counter_provider_page.dart';
import 'package:flutter/material.dart';

import 'router/router_generator.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/stateful',
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage(),
      // },
      onGenerateRoute: RouterGenerator.generateRoute,
      navigatorKey: locator<NavigatorService>().navigatorKey,
      builder: (context, child) => MainlayoutPage(
        child: child!,
      ),
    );
  }
}
