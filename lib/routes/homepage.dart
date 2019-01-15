import 'package:flutter/material.dart';
import 'package:ubaia/components/comprados_rencentemente.dart';
import 'package:ubaia/components/categorias.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//EXEMPLO DE VARIÁVEIS DE UM ESTADO
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              CompradosRecentemente(),
              Categorias(),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 50,
          color: Colors.brown,
          child: Center(
              child: Text(
            "Minha Cesta",
            style: TextStyle(color: Colors.white),
          )),
        ));
  }
}
