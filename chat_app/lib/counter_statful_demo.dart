import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  Color buttonColor;

  CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  void increment() {
    if (mounted) {
      setState(() {
        counter += counter != 10 ? 1 : 0;
      });
    }
    print(counter);
  }

  void decrement() {
    if (mounted) {
      setState(() {
        counter -= counter != 0 ? 1 : 0;
      });
    }
    print(counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter!!!'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            backgroundColor: widget.buttonColor,
            child: Icon(Icons.remove),
            onPressed: () {
              decrement();
            },
          ),
          FloatingActionButton(
              backgroundColor: widget.buttonColor,
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
