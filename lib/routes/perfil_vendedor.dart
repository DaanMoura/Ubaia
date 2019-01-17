import 'package:flutter/material.dart';
import 'package:ubaia/components/rating_stars.dart';
import 'package:ubaia/components/titulo.dart';
import 'package:ubaia/routes/produto.dart';

class PerfilVendedor extends StatefulWidget {

  PerfilVendedor({Key key, this.title, this.vendedor, this.nota}) : super(key: key);

  final String title;
  final String vendedor;
  final double nota;


  @override
  _PerfilVendedorState createState() => _PerfilVendedorState();

}

class _PerfilVendedorState extends State<PerfilVendedor> {

  Widget _buildList(int index) {
    final itemTitle = "Produto $index";

    return ListTile (
      leading: CircleAvatar(), // TODO: adicionar imagem
      title: Text(itemTitle),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaginaProduto(title: "Ubaia", itemTitle: itemTitle,))
        );
      },
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
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 16),
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.brown[600],
              child: Text(widget.vendedor.substring(0,1), style: TextStyle(fontSize: 50, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Titulo(title: widget.vendedor,)),
            ),
            Center(child: RatingStars(rate: widget.nota,)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.network("https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.scienceabc.com%2Fwp-content%2Fuploads%2F2015%2F09%2FBananas1.jpg&f=1",
                  height: 100, width: 100,),
                  Image.network("https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.scienceabc.com%2Fwp-content%2Fuploads%2F2015%2F09%2FBananas1.jpg&f=1",
                    height: 100, width: 100,),
                  Image.network("https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.scienceabc.com%2Fwp-content%2Fuploads%2F2015%2F09%2FBananas1.jpg&f=1",
                    height: 100, width: 100,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text("Uma variedade enorme de frutas fresquinhas à sua disposição. E sabe qual o segredo para ter as mais saborosas do pedaço? É porque aqui elas chegam do campo à loja em até 24 horas. Pode conferir, são tantas opções que você vai encontrar novos sabores a cada mordida.Fazenda Ipanema ",
              textAlign: TextAlign.justify,),
            ),
            Container(
              height: 30,
              color: Colors.green[200],
              child: Padding(
                padding: const EdgeInsets.only(top: 6, left: 32),
                child: Text("Categoria", style: TextStyle(fontSize: 16, color: Colors.green[900]),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                shrinkWrap: true, physics: ClampingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return _buildList(index);
                }
              ),
            ),
            Container(
              height: 30,
              color: Colors.green[200],
              child: Padding(
                padding: const EdgeInsets.only(top: 6, left: 32),
                child: Text("Demais Produtos", style: TextStyle(fontSize: 16, color: Colors.green[900]),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                  shrinkWrap: true, physics: ClampingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildList(index);
                  }
              ),
            ),
          ],
        ),
    );
  }
}
