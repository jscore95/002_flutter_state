import 'package:flutter/material.dart';

class AppBestState extends StatelessWidget {
  const AppBestState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // final ValueNotifier<int> counter = ValueNotifier<int>(0);
  final BoolType myBool = BoolType();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder<bool>(
          valueListenable: myBool,
          builder: (context, myValue, child) {
            return Text(
              '$myValue',
              style: textTheme.displayMedium,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myBool.invert();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class BoolType extends ValueNotifier<bool> {
  BoolType() : super(true);

  void invert() {
    value = !value;
  }
}
