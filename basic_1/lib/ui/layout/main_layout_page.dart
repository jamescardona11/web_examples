import 'package:basic_1/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainlayoutPage extends StatelessWidget {
  const MainlayoutPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppmenuWidget(),
            Spacer(),
            Expanded(
              child: child,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
