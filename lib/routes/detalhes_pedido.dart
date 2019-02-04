import 'package:flutter/material.dart';
import 'package:ubaia/routes/perfil_usuario.dart';
import 'package:ubaia/routes/perfil_vendedor.dart';
import 'package:ubaia/routes/homepage.dart';

class DetalhesPedido extends StatefulWidget {

  @override
  DetalhesPedidoState createState() {
    return new DetalhesPedidoState();
  }
}

class DetalhesPedidoState extends State<DetalhesPedido> {

  final _listaEnderecos = ["Rua São João, 27", "Rua Dom Pedro, 500", "Av São Carlos, 126"];
  String _value = "";

  void _abrePerfil(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PerfilUsuario())
    );
  }

  List<DropdownMenuItem<String>> _makeDropdownList(List<String> list) {
    List<DropdownMenuItem<String>> dropdowlist = [];

    for(var i = 0; i < list.length; i++) {
      dropdowlist.add(DropdownMenuItem<String>(value: list[i], child: Text(list[i]),));
    }

    return dropdowlist;
  }

  String _updateHint() {
    if(_value.isEmpty) {
      return "Casa";
    } else {
      return _value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do Pedido"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.white,
            onPressed: () {_abrePerfil(context);},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Endereço para entrega"),
            DropdownButton<String> (
              isExpanded: true,
              hint: Text(_updateHint()),
              onChanged: (String selected) {setState(() {
                _value = selected;
              });},
              items: _makeDropdownList(_listaEnderecos),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 64, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Data de Entrega"),
                      Text("16/01"),
                    ],
                  ),
                  Text("Outras datas"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Subtotal"),
                Text("R\$20,00"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Taxa de entrega"),
                Text("R\$3,00"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Valor total"),
                  Text("R\$23,00"),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => PerfilVendedor(
                            title: "Ubaia",
                            vendedor: "Fulano",
                            nota: 4,
                          )),
                        );
                      },
                      color: Colors.brown,
                      child: Text("Adicionar mais itens".toUpperCase(), style: TextStyle(color: Colors.white70),),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => MyHomePage(title: "Cestou",)),
                        );
                      },
                      color: Colors.green,
                      child: Text("Finalizar".toUpperCase(), style: TextStyle(color: Colors.white70),),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
