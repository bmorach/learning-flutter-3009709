import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  const CounterStateful({Key? key}) : super(key: key);

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  void increment() {
    setState(() {
      counter += counter != 10 ? 1 : 0;
    });
    print(counter);
  }

  void decrement() {
    setState(() {
      counter -= counter != 0 ? 1 : 0;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              decrement();
            },
          ),
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                increment();
              })
        ],
      ),
      body: Center(
        child: Text(
          '$counter',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
