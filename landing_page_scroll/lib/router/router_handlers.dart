import 'package:fluro/fluro.dart';
import 'package:landing_page_scroll/ui/pages/home_page.dart';

final homeHandler = Handler(
  handlerFunc: (context, params) {
    final page = params['page']!.first;

    if (page != '/') return HomePage();
  },
);
