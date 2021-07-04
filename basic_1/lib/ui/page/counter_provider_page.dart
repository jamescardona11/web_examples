import 'package:basic_1/ui/shared/custom_app_menu.dart';
import 'package:basic_1/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({
    Key? key,
  }) : super(key: key);

  @override
  _CounterProviderPageState createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppmenuWidget(),
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
      ),
    );
  }
}
