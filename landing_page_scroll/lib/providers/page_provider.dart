import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  final scrollController = PageController();

  void goTo(int index) {
    scrollController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
