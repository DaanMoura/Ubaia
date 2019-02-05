import 'package:flutter/material.dart';
import 'package:ubaia/routes/pedido_finalizado.dart';

class MeusPedidos extends StatelessWidget {

  final List<String> pedidos = [
    "João", "Maria", "José", "Carlos",
  ];

  final List<String> status = [
    "Confirmado", "Entregue", "Pendente", "Entregue",
  ];

  Widget _buildRow(int index, BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(pedidos[index].substring(0,1)),
      ),
      title: Text(pedidos[index], style: TextStyle(fontSize: 18.0),),
      subtitle: Text(status[index]),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PedidoFinalizado()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pedidos"),
      ),
      body:  ListView.builder(
          itemCount: pedidos.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildRow(index, context);
          }
      ),
    );
  }
}