import 'package:flutter/material.dart';

class BarIcon extends StatelessWidget {

  final IconData icon;

  const BarIcon({
    @required this.icon,
  }) : assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: InkWell(
          onTap: () {
            print("Person tapped");
          },
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.white70,
          highlightColor: Colors.white70,
          child: Icon(icon),
        ),
      ),
    );
  }
}
