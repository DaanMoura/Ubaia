import 'package:flutter/material.dart';
import 'package:ubaia/components/titulo.dart';

class Categorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Titulo(title: "Categorias"),
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: List.generate(8, (index) {
            return Center(
              child: Container(
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
