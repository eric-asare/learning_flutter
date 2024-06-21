import 'package:flutter/material.dart';
import 'package:hello_world/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("1st Page")),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Go to Second Page"),
            onPressed: () {
              // Navigate to second page
              Navigator.pushNamed(context, '/secondPage');
            },
          ),
        ));
  }
}
