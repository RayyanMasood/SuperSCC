// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  // variables
  int _counter1 = 0;
  int _counter2 = 0;
  int _result = 0;
  bool _isFirstCounter = true; // Indicates which counter is currently active

  // methods
  void _incrementCounter() {
    setState(() {
      if (_isFirstCounter) {
        _counter1++;
      } else {
        _counter2++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_isFirstCounter) {
        _counter1--;
      } else {
        _counter2--;
      }
    });
  }

  void _toggleCounter() {
    setState(() {
      _isFirstCounter = !_isFirstCounter;
    });
  }

  void _add() {
    setState(() {
      _result = _counter1 + _counter2;
    });
  }

  void _subtract() {
    setState(() {
      _result = _counter1 - _counter2;
    });
  }

  void _divide() {
    setState(() {
      if (_counter2 != 0) {
        _result = _counter1 ~/ _counter2;
      }
      // } else {
      //   _result = double.nan; // Handle division by zero
      // }
    });
  }

  void _multiply() {
    setState(() {
      _result = _counter1 * _counter2;
    });
  }

  // UI (user interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Super Simple Calculator"),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // First Number
            Column(
              children: [
                Text(
                  "First Number:",
                  style: TextStyle(fontSize: 24),
                ),
                Text(_counter1.toString(), style: TextStyle(fontSize: 34)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (!_isFirstCounter) _toggleCounter();
                        _incrementCounter();
                      },
                      child: Text("Increment"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (!_isFirstCounter) _toggleCounter();
                        _decrementCounter();
                      },
                      child: Text("Decrement"),
                    ),
                  ],
                ),
              ],
            ),

            // Second Number
            Column(
              children: [
                Text(
                  "Second Number:",
                  style: TextStyle(fontSize: 24),
                ),
                Text(_counter2.toString(), style: TextStyle(fontSize: 34)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_isFirstCounter) _toggleCounter();
                        _incrementCounter();
                      },
                      child: Text("Increment"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_isFirstCounter) _toggleCounter();
                        _decrementCounter();
                      },
                      child: Text("Decrement"),
                    ),
                  ],
                ),
              ],
            ),

            // Operation selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Add button
                MaterialButton(
                  onPressed: () {
                    _add();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(12),
                  shape: CircleBorder(),
                  elevation: 0,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                // Subtract button
                MaterialButton(
                  onPressed: () {
                    _subtract();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(12),
                  shape: CircleBorder(),
                  elevation: 0,
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                // Divide Button
                MaterialButton(
                  onPressed: () {
                    _divide();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(12),
                  shape: CircleBorder(),
                  elevation: 0,
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                // Multiply button
                MaterialButton(
                  onPressed: () {
                    _multiply();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(12),
                  shape: CircleBorder(),
                  elevation: 0,
                  child: Text(
                    "x",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),

            // Result
            Column(
              children: [
                Text(
                  "Result:",
                  style: TextStyle(fontSize: 24),
                ),
                // counter value
                Text(_result.toString(), style: TextStyle(fontSize: 34)), // Display the result
              ],
            ),
          ],
        ),
      ),
    );
  }
}
