import 'package:flutter/material.dart';
import 'package:ubaia/routes/perfil_usuario.dart';
import 'package:ubaia/routes/detalhes_pedido.dart';
import 'package:ubaia/values/strings.dart';
import 'package:ubaia/components/bottom_button.dart';
final str = Strings();

class Cesta extends StatelessWidget {

  final quantidades = ["1un", "2un", "8un", "500g",];
  final produtos = ["Alface", "Rúcula", "Tomate", "Batata",];
  final precos = [5,5,5,5,];

  final precoFinal = 20;

  void _abrePerfil(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PerfilUsuario())
    );
  }

  Widget _buildLine(int index) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black38)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(quantidades[index]),
            Text(produtos[index]),
            Text("R\$${precos[index]},00"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cesta"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.white,
            onPressed: () {_abrePerfil(context);},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
        child: Column(
          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return _buildLine(index);
                }
            ),
            Padding(
              padding: const EdgeInsets.only(top: 72, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Valor"),
                  Text("R\$$precoFinal,00"),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: BottomButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => DetalhesPedido()),
          );
        },
        child: Text(
          "Detalhes do Pedido",
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ),
    );
  }
}
