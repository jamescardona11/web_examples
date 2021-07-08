import 'package:basic_1/provider/counter_provider.dart';
import 'package:basic_1/ui/shared/custom_app_menu.dart';
import 'package:basic_1/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({
    Key? key,
  }) : super(key: key);

  @override
  _CounterProviderPageState createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: CounterProviderBodyPage(),
    );
  }
}

class CounterProviderBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          'Counter Provider',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${counterProvider.counter}',
              style: TextStyle(fontSize: 80),
            ),
          ),
        ),
        Row(
          children: [
            CustomFlatButtonWidget(
              text: 'Increment',
              onPress: () {
                counterProvider.increment();
              },
            ),
            CustomFlatButtonWidget(
              text: 'Decrement',
              onPress: () {
                counterProvider.decrement();
              },
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
