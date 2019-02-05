import 'package:flutter/material.dart';
import 'package:ubaia/components/titulo.dart';
import 'package:ubaia/routes/vendedores.dart';
import 'package:ubaia/values/strings.dart';

final str = Strings();

class Categorias extends StatelessWidget {
  void openVendedores(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Vendedores(
                  title: str.vendedores,
                )));
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
          children: <Widget>[
            InkWell(
              onTap: () {
                openVendedores(context);
              },
              child: Column(
                children: <Widget>[
                  Image.network("https://i.imgur.com/eMXhZY6.png", width: 120, height: 120,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Frutas",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                openVendedores(context);
              },
              child: Column(
                children: <Widget>[
                  Image.network("https://i.imgur.com/0r3n9ot.png", width: 120, height: 120,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Verduras",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                openVendedores(context);
              },
              child: Column(
                children: <Widget>[
                  Image.network("https://i.imgur.com/pmSduIC.png", width: 120, height: 120,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Legumes",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                openVendedores(context);
              },
              child: Column(
                children: <Widget>[
                  Image.network("https://i.imgur.com/K1jrKW8.png", width: 120, height: 120,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Laticínios",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                openVendedores(context);
              },
              child: Column(
                children: <Widget>[
                  Image.network("https://i.imgur.com/BIgP1Aq.png", width: 120, height: 120,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sementes",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
