import 'package:flutter/material.dart';

class CustomFlatButtonWidget extends StatelessWidget {
  const CustomFlatButtonWidget({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
