// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  PageController get _pageController => PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Augusto Araújo'),
              accountEmail: Text('guteco@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('AA'),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Container(
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
          Container(
            decoration: BoxDecoration(color: Colors.indigo),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.orange),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) => _pageController.jumpToPage(index),
          items: [
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
