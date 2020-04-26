import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class  _MyAppState extends State<MyApp>{

  int angka = 0;
  
  final List<Color> colors = [
    Colors.blueGrey[100],
    Colors.blueGrey[200],
    Colors.blueGrey[300],
    Colors.blueGrey[400],
    Colors.blueGrey[500],
    Colors.blueGrey[600],
    Colors.blueGrey[700],
    Colors.blueGrey[800],
    Colors.blueGrey[900],
  ];

  void onClicked(){
    setState(() {
      angka++;
    });
  }
  
  void changeColor(){
    setState(() {
      if (angka <= colors.length - 2) {
        angka++;
      } else {
        angka = 0;
      }
    });
  }
  
  Color setColor(int index){
    return colors[index];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: setColor(angka),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey[900],
          onPressed: changeColor,
          child: Icon(Icons.add),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              child: Text(
                  'Total clicked : $angka',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
