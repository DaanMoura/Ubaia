import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {

  final String title;

  const Titulo({
    @required this.title,
  }) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 28,
      ),
    );
  }
}