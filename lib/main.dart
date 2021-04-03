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
      body: Container(
        alignment: Alignment.center,
        child: Text(
          '$cont',
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cont = cont + 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
