import 'package:basic_1/ui/page/counter_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/stateful',
        routes: {
          '/stateful': (_) => CounterPage(),
        });
  }
}
