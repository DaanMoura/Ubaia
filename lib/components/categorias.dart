import 'package:flutter/material.dart';
import 'package:ubaia/components/titulo.dart';
import 'package:ubaia/routes/vendedores.dart';
import 'package:ubaia/values/strings.dart';
final str = Strings();

class Categorias extends StatelessWidget {

  void openVendedores(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Vendedores(title: str.vendedores,))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Titulo(title: str.categorias),
        ),
        GridView.count(
          padding: EdgeInsets.only(bottom: 20.0),
          shrinkWrap: true,
          crossAxisCount: 2,
          physics: ClampingScrollPhysics(),
          children: List.generate(8, (index) {
            return Center(
              child: Container(
                child: InkWell(
                  onTap: () {
                    openVendedores(context);
                  },
                ),
                height: 130,
                width: 130,
                color: Colors.brown,
              ),
            );
          }),
        )
      ],
    );
  }
}
