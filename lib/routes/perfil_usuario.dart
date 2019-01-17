import 'package:flutter/material.dart';
import 'package:ubaia/routes/cadastro_endereco.dart';

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
          title: Text("Meu Perfil"),
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
              text: "Meus pedidos",
              padding: EdgeInsets.only(top: 32, bottom: 8),
            ),
            _buildSection(
              text: "Editar perfil",
              padding: EdgeInsets.all(8),
            ),
            _buildSection(
              text: "Adicionar endereço",
              padding: EdgeInsets.all(8),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CadastroEndereco()),
                );
              }
            ),
            _buildSection(
              text: "Ajuda",
              padding: EdgeInsets.all(8),
            ),
            _buildSection(
              text: "Sair",
              padding: EdgeInsets.all(8),
            ),
          ],
        ));
  }
}
