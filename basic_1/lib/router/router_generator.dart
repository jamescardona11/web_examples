import 'package:basic_1/ui/page/counter_page.dart';
import 'package:basic_1/ui/page/counter_provider_page.dart';
import 'package:basic_1/ui/page/error_404_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name?.toLowerCase()) {
      case '/stateful':
        return _fadeRoute(
          CounterPage(),
          '/stateful',
        );
      case '/provider':
        return _fadeRoute(
          CounterProviderPage(),
          '/provider',
        );

      default:
        return _fadeRoute(
          Erro404Page(),
          '/404',
        );
    }
  }

  static PageRoute _fadeRoute(Widget child, String name) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => kIsWeb
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              child: child,
              linearTransition: true,
            ),
    );
  }
}
