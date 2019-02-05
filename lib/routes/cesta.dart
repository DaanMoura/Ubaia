import 'package:flutter/material.dart';
import 'package:ubaia/routes/perfil_usuario.dart';
import 'package:ubaia/routes/detalhes_pedido.dart';
import 'package:ubaia/values/strings.dart';
import 'package:ubaia/components/bottom_button.dart';
final str = Strings();

class Cesta extends StatefulWidget {

  @override
  CestaState createState() {
    return new CestaState();
  }
}

class CestaState extends State<Cesta> {
  
  var quantidades = ["1un", "2un", "8un", "500g",];
  var produtos = ["Alface", "Rúcula", "Tomate", "Batata",];
  var precos = [5,2,13,8,];
  var precoFinal = 28;

  int _sum(List<int> list) {
    int result = 0;
    for(int i = 0; i<list.length; i++) {
      result = result + list[i];
    }
    return result;
  }

  void _removerProduto(int index) {
    setState( () {
          quantidades = List.from(quantidades..removeAt(index));
          produtos = List.from(produtos..removeAt(index));
          precos = List.from(precos..removeAt(index));
          precoFinal = precoFinal - precos[index];
        });
    Navigator.pop(context, "Sim");
  }

  void _abrirDialogo(int index) {
    showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Remover Produto"),
        content: Text("Você realmente deseja remover esse produto?"),
        actions: <Widget>[
          FlatButton(
            child: Text("Sim"),
            onPressed: () => _removerProduto(index),
          ),
          FlatButton(
            child: Text("Não"),
            onPressed: () => Navigator.pop(context, "Não"),
          ),
        ],
      )
    );
  }

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
            IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () => _abrirDialogo(index),)
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
                itemCount: produtos.length,
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
