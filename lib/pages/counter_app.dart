import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  void _incrementCounter() {
    // set state rebuilds the widget
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo Counter App Challenge"),
          backgroundColor: Colors.deepPurple[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pushed the button this many times: "),
              Text(
                count.toString(),
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: _incrementCounter, child: Text("Increment!"))
            ],
          ),
        ));
  }
}
