import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class PageProvider extends ChangeNotifier {
  PageController scrollController = PageController();

  List<String> _pages = ['home', 'about', 'contact', 'location'];
  int _curentIndex = 0;

  void createScrollController(String routeName) {
    scrollController = PageController(initialPage: getPageIndex(routeName))
      ..addListener(() {
        final index = (scrollController.page ?? 0).round();

        if (_curentIndex != index) {
          window.history.pushState(null, '', '#/${_pages[index]}');
          document.title = _pages[index];
          _curentIndex = index;
        }
      });
  }

  int getPageIndex(String routeName) {
    final index = _pages.indexOf(routeName);

    if (index >= 0) {
      return index;
    }

    return 0;
  }

  void goTo(int index) {
    // window.history.pushState(null, '', '#/${_pages[index]}');

    scrollController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
