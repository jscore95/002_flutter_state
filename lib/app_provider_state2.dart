import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProviderState2 extends StatelessWidget {
  const AppProviderState2({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('My App')),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.green[200],
                    child: const MyButton(),
                  ),
                ),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        color: Colors.blue[200],
                        child: Consumer<MyModel>(
                          builder: (context, value, child) {
                            return Text(value.someValue);
                          },
                        ))),
              ],
            )),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context, listen: false);

    return TextButton(
      child: const Text('Do something'),
      onPressed: () {
        myModel.doSomething();
      },
    );
  }
}

class MyModel with ChangeNotifier {
  String someValue = 'Hello';
  void doSomething() {
    someValue = 'Goodbye';
    // ignore: avoid_print
    print(someValue);
    notifyListeners();
  }
}
