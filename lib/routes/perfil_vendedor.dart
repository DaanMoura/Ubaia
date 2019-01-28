import 'package:flutter/material.dart';
import 'package:ubaia/components/rating_stars.dart';
import 'package:ubaia/components/titulo.dart';
import 'package:ubaia/routes/produto.dart';
import 'package:ubaia/routes/perfil_usuario.dart';
import 'package:ubaia/values/strings.dart';
final str = Strings();

class PerfilVendedor extends StatefulWidget {

  PerfilVendedor({Key key, this.title, this.vendedor, this.nota}) : super(key: key);

  final String title;
  final String vendedor;
  final double nota;


  @override
  _PerfilVendedorState createState() => _PerfilVendedorState();

}

class _PerfilVendedorState extends State<PerfilVendedor> {

  void _abrePerfil() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PerfilUsuario())
    );
  }

  Widget _buildList(int index) {
    final itemTitle = "Produto $index";

    return ListTile (
      leading: CircleAvatar(), // TODO: adicionar imagem
      title: Text(itemTitle),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaginaProduto(title: str.app_title, itemTitle: itemTitle,))
        );
      },
    );
  }

  Widget _buildImage(String url, int index) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => _abreImagem(context, url, index),
        child: Hero(
          child: Image.network(url, height: 100, width: 100, ),
          tag: 'image-hero-$index'
        ),
      ),
    );
  }

  void _abreImagem(BuildContext context, String url, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: GestureDetector(
              onVerticalDragEnd: (DragEndDetails) {
                Navigator.pop(context);
              },
              child: Hero(
                tag: 'image-hero-$index',
                child: Image.network(url,),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<String> imageList = [
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.scienceabc.com%2Fwp-content%2Fuploads%2F2015%2F09%2FBananas1.jpg&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.i3YhhzW6KFlSKJELpyVK8gHaHY%26pid%3D15.1&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.RSvLuPD2FVwQdxNluQiJxgHaHg%26pid%3D15.1&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.5rTTaPLBBvSyrLk9iPrUUQHaIo%26pid%3D15.1&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7ZawEqQ5Uw757l2Mv586iwHaHC%26pid%3D15.1&f=1"
  ];

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
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext content, int index) {
                    return _buildImage(imageList[index], index);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text(str.descricao_padrao,
              textAlign: TextAlign.justify,),
            ),
            Container(
              height: 30,
              color: Colors.green[200],
              child: Padding(
                padding: const EdgeInsets.only(top: 6, left: 32),
                child: Text(str.categoria, style: TextStyle(fontSize: 16, color: Colors.green[900]),),
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
                child: Text(str.demais_produtos, style: TextStyle(fontSize: 16, color: Colors.green[900]),),
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
