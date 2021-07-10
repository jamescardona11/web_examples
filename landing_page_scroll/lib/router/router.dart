import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_scroll/router/router_handlers.dart';

class Flurouter {
  static final router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/:page',
      handler: homeHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = homeHandler;
  }

  static Route<dynamic>? generator(RouteSettings routeSettings) =>
      router.generator(routeSettings);
}
