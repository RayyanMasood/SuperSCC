// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/counter_page.dart';
import 'package:flutter_application_2/pages/super_simple_calc_page.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final List _pages = [CounterPage(), CalcPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Front Page"),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: Center(child: Text("Hello, there. \nSelect a page from the drawer", style: TextStyle(fontSize: 14+5),)),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    "P A G E S",
                    style: TextStyle(fontSize: 14 + 10),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.plus_one),
                title: Text("C O U N T E R"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CounterPage()));
                },
              ),

              ListTile(
                leading: Icon(Icons.calculate),
                title: Text("C A L C U L A T O R"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalcPage()));
                },
              )
            ],
          )),
    );
  }
}
