import 'package:flutter/material.dart';
import 'package:ubaia/components/titulo.dart';

class PaginaProduto extends StatefulWidget {
  PaginaProduto({Key key, this.title, this.itemTitle}) : super(key: key);

  final String title;
  final String itemTitle;

  @override
  _PaginaProdutoState createState() => _PaginaProdutoState();
}

class _PaginaProdutoState extends State<PaginaProduto> {

  var _quantidade = 500;

  void _diminuiQuantidade() {
    setState(() {
      if(_quantidade >= 100)
      _quantidade = _quantidade - 100;
    });
  }

  void _aumentaQuantidade() {
    setState(() {
      _quantidade = _quantidade + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.brown[200],
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Image.network("https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.i3YhhzW6KFlSKJELpyVK8gHaHY%26pid%3D15.1&f=1",
              fit: BoxFit.cover,)
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Titulo(
                  title: widget.itemTitle,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    heroTag: null,
                    child: Icon(Icons.remove, size: 30,),
                    onPressed: _diminuiQuantidade,
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.brown,
                    elevation: 4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Text("${_quantidade} g", style: TextStyle(fontSize: 30),),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    heroTag: null,
                    child: Icon(Icons.add, size: 30,),
                    onPressed: _aumentaQuantidade,
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.brown,
                    elevation: 4,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text("Uma variedade enorme de frutas fresquinhas à sua disposição. E sabe qual o segredo para ter as mais saborosas do pedaço? É porque aqui elas chegam do campo à loja em até 24 horas. Pode conferir, são tantas opções que você vai encontrar novos sabores a cada mordida.Fazenda Ipanema ",
              textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
              child: TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.brown,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Adicionar observação",
                  labelStyle: TextStyle(color: Colors.brown),
                  hintStyle: TextStyle(color: Colors.brown),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.brown,
                child: Text("Adicionar à cesta".toUpperCase(), style: TextStyle(color: Colors.white70),),
              ),
            )
          ],
        ));
  }
}