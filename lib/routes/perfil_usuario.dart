import 'package:flutter/material.dart';
import 'package:ubaia/routes/cadastro_endereco.dart';
import 'package:ubaia/values/strings.dart';
final str = Strings();

class PerfilUsuario extends StatelessWidget {

  Widget _buildSection(
      {@required String text, @required EdgeInsets padding, onTap}) {
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(str.meu_perfil),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 32),
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.brown[600],
              child: Icon(
                Icons.person,
                size: 100,
                color: Colors.white70,
              ),
            ),
            _buildSection(
              text: str.meus_pedidos,
              padding: EdgeInsets.only(top: 32, bottom: 8),
            ),
            _buildSection(
              text: str.editar_perfil,
              padding: EdgeInsets.all(8),
            ),
            _buildSection(
              text: str.add_endereco,
              padding: EdgeInsets.all(8),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CadastroEndereco()),
                );
              }
            ),
            _buildSection(
              text: str.ajuda,
              padding: EdgeInsets.all(8),
            ),
            _buildSection(
              text: str.sair,
              padding: EdgeInsets.all(8),
            ),
          ],
        ));
  }
}
