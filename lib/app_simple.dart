import 'package:flutter/material.dart';

class AppSimpleState extends StatelessWidget {
  const AppSimpleState({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('$_counter', style: textTheme.displayMedium),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class StackExample extends StatelessWidget {
//   const StackExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Positioned(
//           left: 20,
//           top: 20,
//           child: Container(
//             width: 200,
//             height: 200,
//             decoration: const BoxDecoration(
//               color: Colors.red,
//             ),
//           ),
//         ),
//         Positioned(
//           left: 50,
//           top: 50,
//           child: Container(
//             width: 200,
//             height: 200,
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class WrapExample extends StatelessWidget {
//   final List<String> items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//     'Item 6',
//     'Item 7',
//     'Item 8',
//     'Item 9',
//     'Item 10'
//   ];

//   WrapExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Wrap(
//           spacing: 20.0, // gap between adjacent chips
//           runSpacing: 40.0, // gap between lines
//           children: List<Widget>.generate(items.length, (int index) {
//             return Chip(
//               label: Text(items[index]),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
