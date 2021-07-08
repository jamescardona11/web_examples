import 'package:basic_1/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    Key? key,
    this.base = '10',
  }) : super(key: key);

  final String base;

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base) != null) {
      counter = int.parse(widget.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          'Counter Stateful',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 80),
            ),
          ),
        ),
        Row(
          children: [
            CustomFlatButtonWidget(
              text: 'Increment',
              onPress: () {
                setState(() {
                  counter++;
                });
              },
            ),
            CustomFlatButtonWidget(
              text: 'Decrement',
              onPress: () {
                setState(() {
                  counter--;
                });
              },
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
