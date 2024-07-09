// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {


  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {

    // everytime we want to change the value of something and we want that to be reflected in the app, we use setState()
    // setState() just rebuilds the widget with the updated values
    setState(() {
      _counter++;  
    });
    
  }

  // UI (user interface)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App!"),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text(
              "The counter value is:",
              style: TextStyle(fontSize: 14+10), // The default, apparently, is 14
            ),

            // counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 14+20)
            ),

            // button
            ElevatedButton(
              onPressed: _incrementCounter, 
              child: Text("Press me!")
            )

          ],
        ),
      )
    );
  }
}