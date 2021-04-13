import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      theme: ThemeData(canvasColor: Colors.black),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cont = 0;

  add() {
    setState(
      () {
        cont++;
      },
    );
  }

  minus() {
    setState(() {
      cont--;
    });
  }

  reset() {
    setState(() {
      cont = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
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
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[600],
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
            CustomButton(minus, Icons.remove),
            CustomButton(reset, Icons.autorenew),
            CustomButton(add, Icons.add),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function funcao;
  final IconData icone;

  CustomButton(this.funcao, this.icone, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        funcao();
      },
      backgroundColor: Colors.grey[350],
      child: Icon(icone),
    );
  }
}
