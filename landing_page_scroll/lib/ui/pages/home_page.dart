import 'package:flutter/material.dart';
import 'package:landing_page_scroll/ui/shared/custom_app_menu.dart';
import 'package:landing_page_scroll/ui/views/about_view.dart';
import 'package:landing_page_scroll/ui/views/contact_view.dart';
import 'package:landing_page_scroll/ui/views/home_view.dart';
import 'package:landing_page_scroll/ui/views/location_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(
              right: 20,
              top: 20,
              child: CustomAppWidget(),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink,
            Colors.deepPurple,
          ],
          stops: [
            0.5,
            0.5,
          ],
        ),
      );
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}
