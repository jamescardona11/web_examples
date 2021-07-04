import 'package:flutter/material.dart';

import 'custom_flat_button.dart';

class CustomAppmenuWidget extends StatelessWidget {
  const CustomAppmenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.red,
      child: Row(
        children: [
          CustomFlatButtonWidget(
            text: 'Counter',
            onPress: () {},
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Counter Provider',
            onPress: () {},
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButtonWidget(
            text: 'Other',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
