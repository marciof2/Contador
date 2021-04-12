import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cont = 0;

  Function add() {
    setState(
      () {
        cont = cont + 1;
      },
    );
  }

  Function minus() {
    setState(() {
      cont--;
    });
  }

  Function reset() {
    setState(() {
      cont = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Contador',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              '$cont',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 1.0,
                color: Colors.grey.withOpacity(.3),
                blurRadius: 3.0),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                minus();
              },
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                reset();
              },
              child: Icon(Icons.autorenew),
            ),
            FloatingActionButton(
              onPressed: () {
                add();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
