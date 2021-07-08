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
      '/stateful/:base',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: _providerHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: _dashboardHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = _pageNotFound;
  }

  static final _counterHandler = Handler(
    handlerFunc: (context, params) {
      final base = params['base']?[0];

      return CounterPage(base: base ?? '0');
    },
  );

  static final _providerHandler = Handler(
    handlerFunc: (context, params) {
      final q = params['q']?[0] ?? '15';

      return CounterProviderPage(base: q);
    },
  );

  static final _dashboardHandler = Handler(
    handlerFunc: (context, params) {
      print(params);

      return Erro404Page();
    },
  );

  static final _pageNotFound = Handler(
    handlerFunc: (context, params) => Erro404Page(),
  );
}
