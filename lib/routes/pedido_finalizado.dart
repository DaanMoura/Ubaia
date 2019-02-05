import 'package:flutter/material.dart';

class PedidoFinalizado extends StatelessWidget {
  var quantidades = [
    "1un",
    "2un",
    "8un",
    "500g",
  ];
  var produtos = [
    "Alface",
    "Rúcula",
    "Tomate",
    "Batata",
  ];
  var precos = [
    5,
    2,
    13,
    8,
  ];
  var precoFinal = 28;

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
          title: Text("Pedido"),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: produtos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildLine(index);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Valor"),
                  Text("R\$ $precoFinal,00"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Taxa de entrega"),
                  Text("R\$ 3,00"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Valor total"),
                  Text("R\$ ${precoFinal + 3},00"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
              child: Text(
                "Endereço de entrega:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Text("Rua João Damasco, 44"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
              child: MaterialButton(
                        minWidth: 250,
                        onPressed: () => print("avaliar"),
                        color: Colors.brown,
                        child: Text(
                          "Avaliar".toUpperCase(),
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
            ),
          ],
        ));
  }
}
