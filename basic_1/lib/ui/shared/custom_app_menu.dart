import 'package:basic_1/provider/locator.dart';
import 'package:basic_1/services/navigator_service.dart';
import 'package:flutter/material.dart';

import 'custom_flat_button.dart';

class CustomAppmenuWidget extends StatelessWidget {
  const CustomAppmenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return constraints.maxWidth > 520
            ? _TableDesktopWidget()
            : _MobileWidget();
      },
    );
  }
}

class _TableDesktopWidget extends StatelessWidget {
  const _TableDesktopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CustomFlatButtonWidget(
            text: 'Counter',
            onPress: () {
              // Navigator.pushNamed(context, '/stateful');
              locator<NavigatorService>().navigaTo('/stateful');
            },
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Counter 100',
            onPress: () {
              // Navigator.pushNamed(context, '/stateful');
              locator<NavigatorService>().navigaTo('/stateful/100');
            },
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Counter Provider',
            onPress: () {
              // Navigator.pushNamed(context, '/provider');
              locator<NavigatorService>().navigaTo('/provider');
            },
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Counter Provider 200',
            onPress: () {
              // Navigator.pushNamed(context, '/provider');
              locator<NavigatorService>().navigaTo('/provider?q=200');
            },
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Other',
            onPress: () {
              // Navigator.pushNamed(context, '/other');
              locator<NavigatorService>().navigaTo('/other');
            },
          ),
        ],
      ),
    );
  }
}

class _MobileWidget extends StatelessWidget {
  const _MobileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButtonWidget(
            text: 'Counter',
            onPress: () {
              // Navigator.pushNamed(context, '/stateful');
              locator<NavigatorService>().navigaTo('/stateful');
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Counter Provider',
            onPress: () {
              // Navigator.pushNamed(context, '/provider');
              locator<NavigatorService>().navigaTo('/provider');
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Other',
            onPress: () {
              // Navigator.pushNamed(context, '/other');
              locator<NavigatorService>().navigaTo('/other');
            },
          ),
        ],
      ),
    );
  }
}
