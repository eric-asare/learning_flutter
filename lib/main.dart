// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

int increment(int val) {
  return (val + 1);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[200],
            title: Center(child: Text("Tap Counter")),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey,
                  child: Center(
                      child: Text(
                    "$count",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    count = increment(count);
                  },
                  child: Icon(
                    Icons.add,
                    size: 64,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
