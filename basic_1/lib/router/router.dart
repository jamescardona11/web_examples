import 'package:basic_1/ui/page/counter_page.dart';
import 'package:basic_1/ui/page/counter_provider_page.dart';
import 'package:basic_1/ui/page/error_404_page.dart';
import 'package:fluro/fluro.dart';

class Flurouter {
  static final router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: _providerHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = _pageNotFound;
  }

  static final _counterHandler = Handler(
    handlerFunc: (context, params) => CounterPage(),
  );

  static final _providerHandler = Handler(
    handlerFunc: (context, params) => CounterProviderPage(),
  );

  static final _pageNotFound = Handler(
    handlerFunc: (context, params) => Erro404Page(),
  );
}
