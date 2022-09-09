// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            'APP TESTE!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_sharp),
          label: 'Item1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc_rounded),
          label: 'Item2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm_outlined),
          label: 'Item3',
        ),
      ]),
    );
  }
}
