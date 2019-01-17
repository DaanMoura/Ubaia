import 'package:flutter/material.dart';
import 'package:ubaia/components/comprados_rencentemente.dart';
import 'package:ubaia/components/categorias.dart';
import 'package:ubaia/components/bottom_button.dart';
import 'package:ubaia/routes/perfil_usuario.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _abrePerfil() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PerfilUsuario())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.white,
            onPressed: () {_abrePerfil();},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          CompradosRecentemente(),
          Categorias(),
        ],
      ),
      bottomSheet: BottomButton(
        child: Text(
          "Minha Cesta",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
