import 'package:basic_1/provider/locator.dart';
import 'package:basic_1/router/router.dart';
import 'package:basic_1/services/navigator_service.dart';
import 'package:basic_1/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  setUpLocator();

  Flurouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage(),
      // },
      // onGenerateRoute: RouterGenerator.generateRoute,
      onGenerateRoute: Flurouter.router.generator,
      navigatorKey: locator<NavigatorService>().navigatorKey,
      builder: (context, child) => MainlayoutPage(
        child: child!,
      ),
    );
  }
}
