import 'package:flutter/material.dart';
import 'package:ubaia/components/bar_icon.dart';
import 'package:ubaia/components/rating_stars.dart';

class Vendedores extends StatefulWidget {
  Vendedores({Key key, this.title}) : super(key: key);

  final String title;

  final List<String> vendedores = [
    "João", "Maria", "José", "Carlos", "Fulano", "Ciclano",
  ];

  final List<String> entrega = [
    "Sexta", "Quarta", "01 de Fevereiro", "Sábado", "Domingo", "Sexta",
  ];

  final List<double> nota = [
    5, 3.7, 2.0, 4.5, 4.7, 1.0,
  ];

  @override
  _VendedoresState createState() => _VendedoresState();
}

class _VendedoresState extends State<Vendedores> {

  Widget _buildRow(int index) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(widget.vendedores[index].substring(0,1)),
      ),
      title: Text(widget.vendedores[index], style: TextStyle(fontSize: 18.0),),
      subtitle: Text("Próxima entrega: ${widget.entrega[index]}"),
      trailing: RatingStars(rate: widget.nota[index])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          BarIcon(icon: Icons.person,)
        ],
      ),
      body: ListView.builder(
          itemCount: widget.vendedores.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildRow(index);
          }
      )
    );
  }
}
